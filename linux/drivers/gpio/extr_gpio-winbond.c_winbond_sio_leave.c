
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WB_SIO_EXT_EXIT_KEY ;
 int outb (int ,unsigned long) ;
 int release_region (unsigned long,int) ;

__attribute__((used)) static void winbond_sio_leave(unsigned long base)
{
 outb(WB_SIO_EXT_EXIT_KEY, base);

 release_region(base, 2);
}
