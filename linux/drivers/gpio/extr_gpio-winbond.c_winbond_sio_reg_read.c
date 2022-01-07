
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (unsigned long) ;
 int outb (int ,unsigned long) ;

__attribute__((used)) static u8 winbond_sio_reg_read(unsigned long base, u8 reg)
{
 outb(reg, base);
 return inb(base + 1);
}
