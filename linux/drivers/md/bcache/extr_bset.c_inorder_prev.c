
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ffs (unsigned int) ;

__attribute__((used)) static unsigned int inorder_prev(unsigned int j, unsigned int size)
{
 if (j * 2 < size) {
  j = j * 2;

  while (j * 2 + 1 < size)
   j = j * 2 + 1;
 } else
  j >>= ffs(j);

 return j;
}
