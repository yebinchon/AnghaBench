
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ base ;
 unsigned char inb (scalar_t__) ;

__attribute__((used)) static inline unsigned char port_read(unsigned char p)
{
 return inb(base+p);
}
