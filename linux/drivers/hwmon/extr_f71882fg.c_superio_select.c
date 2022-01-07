
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIO_REG_LDSEL ;
 int outb (int,int) ;

__attribute__((used)) static inline void superio_select(int base, int ld)
{
 outb(SIO_REG_LDSEL, base);
 outb(ld, base + 1);
}
