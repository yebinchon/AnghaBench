
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i40iw_aeqe_info {scalar_t__ q2_data_written; } ;
typedef int __be16 ;


 int ntohs (int ) ;

__attribute__((used)) static u32 i40iw_iwarp_opcode(struct i40iw_aeqe_info *info, u8 *pkt)
{
 __be16 *mpa;
 u32 opcode = 0xffffffff;

 if (info->q2_data_written) {
  mpa = (__be16 *)pkt;
  opcode = ntohs(mpa[1]) & 0xf;
 }
 return opcode;
}
