
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (scalar_t__) ;
 int inw (scalar_t__) ;
 int outb (int,scalar_t__) ;
 scalar_t__ reg_base ;

__attribute__((used)) static u8 read_reg(int reg)
{
 u8 ret = 0;

 inw(reg_base + 1);
 inw(reg_base + 1);
 outb(3, reg_base + 2);
 ret = inb(reg_base + reg);
 outb(0x83, reg_base + 2);

 return ret;
}
