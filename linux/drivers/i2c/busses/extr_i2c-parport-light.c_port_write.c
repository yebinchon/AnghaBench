
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ base ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void port_write(unsigned char p, unsigned char d)
{
 outb(d, base+p);
}
