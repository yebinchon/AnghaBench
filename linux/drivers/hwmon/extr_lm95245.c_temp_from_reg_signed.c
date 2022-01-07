
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int temp_from_reg_unsigned (int,int) ;

__attribute__((used)) static int temp_from_reg_signed(u8 val_h, u8 val_l)
{
 if (val_h & 0x80)
  return (val_h - 0x100) * 1000;
 return temp_from_reg_unsigned(val_h, val_l);
}
