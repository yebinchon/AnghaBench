
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int outb (int ,unsigned long) ;

__attribute__((used)) static void winbond_sio_reg_write(unsigned long base, u8 reg, u8 data)
{
 outb(reg, base);
 outb(data, base + 1);
}
