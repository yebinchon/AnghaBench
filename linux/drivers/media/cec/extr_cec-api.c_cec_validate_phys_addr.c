
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CEC_PHYS_ADDR_INVALID ;
 int EINVAL ;

__attribute__((used)) static int cec_validate_phys_addr(u16 phys_addr)
{
 int i;

 if (phys_addr == CEC_PHYS_ADDR_INVALID)
  return 0;
 for (i = 0; i < 16; i += 4)
  if (phys_addr & (0xf << i))
   break;
 if (i == 16)
  return 0;
 for (i += 4; i < 16; i += 4)
  if ((phys_addr & (0xf << i)) == 0)
   return -EINVAL;
 return 0;
}
