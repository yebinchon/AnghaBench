
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int IB_OPCODE_TID_RDMA ;
 scalar_t__ PBC_IHCRC_LKDETH ;
 int PBC_INSERT_HCRC_SHIFT ;
 int PBC_INSERT_HCRC_SMASK ;

__attribute__((used)) static u64 update_hcrc(u8 opcode, u64 pbc)
{
 if ((opcode & IB_OPCODE_TID_RDMA) == IB_OPCODE_TID_RDMA) {
  pbc &= ~PBC_INSERT_HCRC_SMASK;
  pbc |= (u64)PBC_IHCRC_LKDETH << PBC_INSERT_HCRC_SHIFT;
 }
 return pbc;
}
