
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;

__attribute__((used)) static inline void superio_outb(int sio_cip, int reg, int val)
{
 outb(reg, sio_cip);
 outb(val, sio_cip + 1);
}
