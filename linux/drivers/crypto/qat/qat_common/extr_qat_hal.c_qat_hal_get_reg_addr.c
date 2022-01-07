
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short BAD_REGADDR ;
__attribute__((used)) static unsigned short qat_hal_get_reg_addr(unsigned int type,
        unsigned short reg_num)
{
 unsigned short reg_addr;

 switch (type) {
 case 139:
 case 137:
  reg_addr = 0x80 | (reg_num & 0x7f);
  break;
 case 138:
 case 136:
  reg_addr = reg_num & 0x1f;
  break;
 case 130:
 case 128:
 case 129:
  reg_addr = 0x180 | (reg_num & 0x1f);
  break;
 case 131:
  reg_addr = 0x140 | ((reg_num & 0x3) << 1);
  break;
 case 142:
 case 140:
 case 141:
  reg_addr = 0x1c0 | (reg_num & 0x1f);
  break;
 case 143:
  reg_addr = 0x100 | ((reg_num & 0x3) << 1);
  break;
 case 133:
  reg_addr = 0x280 | (reg_num & 0x1f);
  break;
 case 135:
  reg_addr = 0x200;
  break;
 case 134:
  reg_addr = 0x220;
  break;
 case 132:
  reg_addr = 0x300 | (reg_num & 0xff);
  break;
 default:
  reg_addr = BAD_REGADDR;
  break;
 }
 return reg_addr;
}
