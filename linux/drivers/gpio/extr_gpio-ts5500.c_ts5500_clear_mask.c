
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (int ) ;
 int outb (int ,int ) ;

__attribute__((used)) static inline void ts5500_clear_mask(u8 mask, u8 addr)
{
 u8 val = inb(addr);
 val &= ~mask;
 outb(val, addr);
}
