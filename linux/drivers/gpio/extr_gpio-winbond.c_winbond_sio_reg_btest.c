
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int ) ;
 int winbond_sio_reg_read (unsigned long,int ) ;

__attribute__((used)) static bool winbond_sio_reg_btest(unsigned long base, u8 reg, u8 bit)
{
 return winbond_sio_reg_read(base, reg) & BIT(bit);
}
