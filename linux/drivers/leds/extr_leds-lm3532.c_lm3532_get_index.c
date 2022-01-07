
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int lm3532_get_index(const int table[], int size, int value)
{
 int i;

 for (i = 1; i < size; i++) {
  if (value == table[i])
   return i;


  if (value > table[i - 1] &&
      value < table[i]) {
   if (value - table[i - 1] < table[i] - value)
    return i - 1;
   else
    return i;
  }
 }

 return -EINVAL;
}
