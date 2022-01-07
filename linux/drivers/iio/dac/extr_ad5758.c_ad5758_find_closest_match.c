
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ad5758_find_closest_match(const int *array,
         unsigned int size, int val)
{
 int i;

 for (i = 0; i < size; i++) {
  if (val <= array[i])
   return i;
 }

 return size - 1;
}
