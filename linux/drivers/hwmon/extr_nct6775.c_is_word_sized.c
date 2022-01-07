
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nct6775_data {int kind; } ;
__attribute__((used)) static bool is_word_sized(struct nct6775_data *data, u16 reg)
{
 switch (data->kind) {
 case 139:
  return reg == 0x20 || reg == 0x22 || reg == 0x24 ||
    reg == 0xe0 || reg == 0xe2 || reg == 0xe4 ||
    reg == 0x111 || reg == 0x121 || reg == 0x131;
 case 138:
  return reg == 0x20 || reg == 0x22 || reg == 0x24 ||
    reg == 0x26 || reg == 0x28 || reg == 0xe0 || reg == 0xe2 ||
    reg == 0xe4 || reg == 0xe6 || reg == 0xe8 || reg == 0x111 ||
    reg == 0x121 || reg == 0x131 || reg == 0x191 || reg == 0x1a1;
 case 137:
  return (((reg & 0xff00) == 0x100 ||
      (reg & 0xff00) == 0x200) &&
     ((reg & 0x00ff) == 0x50 ||
      (reg & 0x00ff) == 0x53 ||
      (reg & 0x00ff) == 0x55)) ||
    (reg & 0xfff0) == 0x630 ||
    reg == 0x640 || reg == 0x642 ||
    reg == 0x662 ||
    ((reg & 0xfff0) == 0x650 && (reg & 0x000f) >= 0x06) ||
    reg == 0x73 || reg == 0x75 || reg == 0x77;
 case 136:
  return (((reg & 0xff00) == 0x100 ||
      (reg & 0xff00) == 0x200) &&
     ((reg & 0x00ff) == 0x50 ||
      (reg & 0x00ff) == 0x53 ||
      (reg & 0x00ff) == 0x55)) ||
    (reg & 0xfff0) == 0x630 ||
    reg == 0x402 ||
    reg == 0x640 || reg == 0x642 ||
    ((reg & 0xfff0) == 0x650 && (reg & 0x000f) >= 0x06) ||
    reg == 0x73 || reg == 0x75 || reg == 0x77;
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  return reg == 0x150 || reg == 0x153 || reg == 0x155 ||
    (reg & 0xfff0) == 0x4c0 ||
    reg == 0x402 ||
    reg == 0x63a || reg == 0x63c || reg == 0x63e ||
    reg == 0x640 || reg == 0x642 || reg == 0x64a ||
    reg == 0x64c ||
    reg == 0x73 || reg == 0x75 || reg == 0x77 || reg == 0x79 ||
    reg == 0x7b || reg == 0x7d;
 }
 return 0;
}
