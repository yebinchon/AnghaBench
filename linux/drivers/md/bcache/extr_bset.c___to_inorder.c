
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int fls (unsigned int) ;

__attribute__((used)) static unsigned int __to_inorder(unsigned int j,
      unsigned int size,
      unsigned int extra)
{
 unsigned int b = fls(j);
 unsigned int shift = fls(size - 1) - b;

 j ^= 1U << (b - 1);
 j <<= 1;
 j |= 1;
 j <<= shift;

 if (j > extra)
  j -= (j - extra) >> 1;

 return j;
}
