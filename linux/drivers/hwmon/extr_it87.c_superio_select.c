
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEV ;
 int outb (int,int) ;

__attribute__((used)) static inline void superio_select(int ioreg, int ldn)
{
 outb(DEV, ioreg);
 outb(ldn, ioreg + 1);
}
