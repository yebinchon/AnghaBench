
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int cmd640_key ;
 int outb_p (int ,int) ;
 int outl_p (int,int) ;

__attribute__((used)) static void put_cmd640_reg_pci1(u16 reg, u8 val)
{
 outl_p((reg & 0xfc) | cmd640_key, 0xcf8);
 outb_p(val, (reg & 3) | 0xcfc);
}
