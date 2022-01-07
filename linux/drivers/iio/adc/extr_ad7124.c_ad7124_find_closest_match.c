
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int U32_MAX ;
 unsigned int abs (int) ;

__attribute__((used)) static int ad7124_find_closest_match(const int *array,
         unsigned int size, int val)
{
 int i, idx;
 unsigned int diff_new, diff_old;

 diff_old = U32_MAX;
 idx = 0;

 for (i = 0; i < size; i++) {
  diff_new = abs(val - array[i]);
  if (diff_new < diff_old) {
   diff_old = diff_new;
   idx = i;
  }
 }

 return idx;
}
