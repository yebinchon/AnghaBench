
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int clamp (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int clamp_align(unsigned int x, unsigned int min,
    unsigned int max, unsigned int align)
{

 unsigned int mask = ~((1 << align) - 1);


 x = clamp(x, (min + ~mask) & mask, max & mask);


 if (align)
  x = (x + (1 << (align - 1))) & mask;

 return x;
}
