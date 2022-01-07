
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int ) ;
 int winbond_sio_reg_read (unsigned long,int ) ;
 int winbond_sio_reg_write (unsigned long,int ,int ) ;

__attribute__((used)) static void winbond_sio_reg_bset(unsigned long base, u8 reg, u8 bit)
{
 u8 val;

 val = winbond_sio_reg_read(base, reg);
 val |= BIT(bit);
 winbond_sio_reg_write(base, reg, val);
}
