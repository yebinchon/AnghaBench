
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;
 int release_region (int,int) ;

__attribute__((used)) static inline void
superio_exit(int base)
{
 outb(0xaa, base);
 release_region(base, 2);
}
