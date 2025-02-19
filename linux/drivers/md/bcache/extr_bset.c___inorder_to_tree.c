
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ffs (unsigned int) ;
 unsigned int roundup_pow_of_two (unsigned int) ;

__attribute__((used)) static unsigned int __inorder_to_tree(unsigned int j,
          unsigned int size,
          unsigned int extra)
{
 unsigned int shift;

 if (j > extra)
  j += j - extra;

 shift = ffs(j);

 j >>= shift;
 j |= roundup_pow_of_two(size) >> shift;

 return j;
}
