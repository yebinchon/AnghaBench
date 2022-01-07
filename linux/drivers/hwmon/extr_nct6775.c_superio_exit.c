
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;
 int release_region (int,int) ;

__attribute__((used)) static inline void
superio_exit(int ioreg)
{
 outb(0xaa, ioreg);
 outb(0x02, ioreg);
 outb(0x02, ioreg + 1);
 release_region(ioreg, 2);
}
