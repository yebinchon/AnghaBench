
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ffz (unsigned int) ;

__attribute__((used)) static unsigned int inorder_next(unsigned int j, unsigned int size)
{
 if (j * 2 + 1 < size) {
  j = j * 2 + 1;

  while (j * 2 < size)
   j *= 2;
 } else
  j >>= ffz(j) + 1;

 return j;
}
