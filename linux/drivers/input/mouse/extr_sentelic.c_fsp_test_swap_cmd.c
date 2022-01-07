
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char fsp_test_swap_cmd(unsigned char reg_val)
{
 switch (reg_val) {
 case 10: case 20: case 40: case 60: case 80: case 100: case 200:





  return (reg_val >> 4) | (reg_val << 4);
 default:
  return reg_val;
 }
}
