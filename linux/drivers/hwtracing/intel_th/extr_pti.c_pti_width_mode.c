
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 unsigned int* pti_mode ;

__attribute__((used)) static int pti_width_mode(unsigned int width)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(pti_mode); i++)
  if (pti_mode[i] == width)
   return i;

 return -EINVAL;
}
