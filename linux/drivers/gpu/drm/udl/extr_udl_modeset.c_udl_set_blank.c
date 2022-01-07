
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






 char* udl_set_register (char*,int,int) ;

__attribute__((used)) static char *udl_set_blank(char *buf, int dpms_mode)
{
 u8 reg;
 switch (dpms_mode) {
 case 131:
  reg = 0x07;
  break;
 case 129:
  reg = 0x05;
  break;
 case 128:
  reg = 0x01;
  break;
 case 130:
  reg = 0x00;
  break;
 }

 return udl_set_register(buf, 0x1f, reg);
}
