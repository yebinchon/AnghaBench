
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char fsp_test_invert_cmd(unsigned char reg_val)
{
 switch (reg_val) {
 case 0xe9: case 0xee: case 0xf2: case 0xff:





  return ~reg_val;
 default:
  return reg_val;
 }
}
