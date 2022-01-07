
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_ohci {int pri_req_max; int lock; int csr_state_setclear_abdicate; int is_root; } ;
struct fw_card {int dummy; } ;







 int CSR_STATE_BIT_ABDICATE ;
 int CSR_STATE_BIT_CMSTR ;


 int OHCI1394_ATRetries ;
 int OHCI1394_FairnessControl ;
 int OHCI1394_LinkControlSet ;
 int OHCI1394_LinkControl_cycleMaster ;
 int OHCI1394_NodeID ;
 int WARN_ON (int) ;
 struct fw_ohci* fw_ohci (struct fw_card*) ;
 int get_cycle_time (struct fw_ohci*) ;
 int reg_read (struct fw_ohci*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_bus_time (struct fw_ohci*) ;

__attribute__((used)) static u32 ohci_read_csr(struct fw_card *card, int csr_offset)
{
 struct fw_ohci *ohci = fw_ohci(card);
 unsigned long flags;
 u32 value;

 switch (csr_offset) {
 case 129:
 case 128:
  if (ohci->is_root &&
      (reg_read(ohci, OHCI1394_LinkControlSet) &
       OHCI1394_LinkControl_cycleMaster))
   value = CSR_STATE_BIT_CMSTR;
  else
   value = 0;
  if (ohci->csr_state_setclear_abdicate)
   value |= CSR_STATE_BIT_ABDICATE;

  return value;

 case 131:
  return reg_read(ohci, OHCI1394_NodeID) << 16;

 case 132:
  return get_cycle_time(ohci);

 case 133:





  spin_lock_irqsave(&ohci->lock, flags);
  value = update_bus_time(ohci);
  spin_unlock_irqrestore(&ohci->lock, flags);
  return value;

 case 134:
  value = reg_read(ohci, OHCI1394_ATRetries);
  return (value >> 4) & 0x0ffff00f;

 case 130:
  return (reg_read(ohci, OHCI1394_FairnessControl) & 0x3f) |
   (ohci->pri_req_max << 8);

 default:
  WARN_ON(1);
  return 0;
 }
}
