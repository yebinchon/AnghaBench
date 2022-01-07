
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static u16 to_fw_output_mode(u16 mode)
{
 switch (mode) {
 case 132:
  return 0;
 case 129:
  return 4;
 case 130:
  return 8;
 case 128:
  return 16;
 case 133:
  return 128;
 case 131:
  return 2;
 case 134:
  return 1;
 default:
  return 0;
 }
}
