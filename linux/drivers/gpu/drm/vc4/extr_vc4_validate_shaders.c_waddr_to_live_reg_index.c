
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int QPU_W_ACC0 ;
 int QPU_W_ACC3 ;

__attribute__((used)) static uint32_t
waddr_to_live_reg_index(uint32_t waddr, bool is_b)
{
 if (waddr < 32) {
  if (is_b)
   return 32 + waddr;
  else
   return waddr;
 } else if (waddr <= QPU_W_ACC3) {
  return 64 + waddr - QPU_W_ACC0;
 } else {
  return ~0;
 }
}
