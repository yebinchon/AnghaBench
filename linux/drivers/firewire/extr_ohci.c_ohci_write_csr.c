
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_ohci {int csr_state_setclear_abdicate; int bus_time; int lock; int is_root; } ;
struct fw_card {int dummy; } ;







 int CSR_STATE_BIT_ABDICATE ;
 int CSR_STATE_BIT_CMSTR ;


 int OHCI1394_ATRetries ;
 int OHCI1394_FairnessControl ;
 int OHCI1394_IntEventSet ;
 int OHCI1394_IsochronousCycleTimer ;
 int OHCI1394_LinkControlClear ;
 int OHCI1394_LinkControlSet ;
 int OHCI1394_LinkControl_cycleMaster ;
 int OHCI1394_NodeID ;
 int OHCI1394_cycleInconsistent ;
 int WARN_ON (int) ;
 int flush_writes (struct fw_ohci*) ;
 struct fw_ohci* fw_ohci (struct fw_card*) ;
 int reg_write (struct fw_ohci*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_bus_time (struct fw_ohci*) ;

__attribute__((used)) static void ohci_write_csr(struct fw_card *card, int csr_offset, u32 value)
{
 struct fw_ohci *ohci = fw_ohci(card);
 unsigned long flags;

 switch (csr_offset) {
 case 129:
  if ((value & CSR_STATE_BIT_CMSTR) && ohci->is_root) {
   reg_write(ohci, OHCI1394_LinkControlClear,
      OHCI1394_LinkControl_cycleMaster);
   flush_writes(ohci);
  }
  if (value & CSR_STATE_BIT_ABDICATE)
   ohci->csr_state_setclear_abdicate = 0;
  break;

 case 128:
  if ((value & CSR_STATE_BIT_CMSTR) && ohci->is_root) {
   reg_write(ohci, OHCI1394_LinkControlSet,
      OHCI1394_LinkControl_cycleMaster);
   flush_writes(ohci);
  }
  if (value & CSR_STATE_BIT_ABDICATE)
   ohci->csr_state_setclear_abdicate = 1;
  break;

 case 131:
  reg_write(ohci, OHCI1394_NodeID, value >> 16);
  flush_writes(ohci);
  break;

 case 132:
  reg_write(ohci, OHCI1394_IsochronousCycleTimer, value);
  reg_write(ohci, OHCI1394_IntEventSet,
     OHCI1394_cycleInconsistent);
  flush_writes(ohci);
  break;

 case 133:
  spin_lock_irqsave(&ohci->lock, flags);
  ohci->bus_time = (update_bus_time(ohci) & 0x40) |
                   (value & ~0x7f);
  spin_unlock_irqrestore(&ohci->lock, flags);
  break;

 case 134:
  value = (value & 0xf) | ((value & 0xf) << 4) |
   ((value & 0xf) << 8) | ((value & 0x0ffff000) << 4);
  reg_write(ohci, OHCI1394_ATRetries, value);
  flush_writes(ohci);
  break;

 case 130:
  reg_write(ohci, OHCI1394_FairnessControl, value & 0x3f);
  flush_writes(ohci);
  break;

 default:
  WARN_ON(1);
  break;
 }
}
