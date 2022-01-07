
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_ohci {int* self_id_buffer; int card; } ;


 int EBUSY ;
 int OHCI1394_NodeID ;
 int OHCI1394_NodeID_idValid ;
 int get_self_id_pos (struct fw_ohci*,int,int) ;
 int get_status_for_port (struct fw_ohci*,int) ;
 int initiated_reset (struct fw_ohci*) ;
 int memmove (int*,int*,int) ;
 int ohci_notice (struct fw_ohci*,char*) ;
 int ohci_read_phy_reg (int *,int) ;
 int reg_read (struct fw_ohci*,int ) ;

__attribute__((used)) static int find_and_insert_self_id(struct fw_ohci *ohci, int self_id_count)
{
 int reg, i, pos, status;

 u32 self_id = 0x8040c800;

 reg = reg_read(ohci, OHCI1394_NodeID);
 if (!(reg & OHCI1394_NodeID_idValid)) {
  ohci_notice(ohci,
       "node ID not valid, new bus reset in progress\n");
  return -EBUSY;
 }
 self_id |= ((reg & 0x3f) << 24);

 reg = ohci_read_phy_reg(&ohci->card, 4);
 if (reg < 0)
  return reg;
 self_id |= ((reg & 0x07) << 8);

 reg = ohci_read_phy_reg(&ohci->card, 1);
 if (reg < 0)
  return reg;
 self_id |= ((reg & 0x3f) << 16);

 for (i = 0; i < 3; i++) {
  status = get_status_for_port(ohci, i);
  if (status < 0)
   return status;
  self_id |= ((status & 0x3) << (6 - (i * 2)));
 }

 self_id |= initiated_reset(ohci);

 pos = get_self_id_pos(ohci, self_id, self_id_count);
 if (pos >= 0) {
  memmove(&(ohci->self_id_buffer[pos+1]),
   &(ohci->self_id_buffer[pos]),
   (self_id_count - pos) * sizeof(*ohci->self_id_buffer));
  ohci->self_id_buffer[pos] = self_id;
  self_id_count++;
 }
 return self_id_count;
}
