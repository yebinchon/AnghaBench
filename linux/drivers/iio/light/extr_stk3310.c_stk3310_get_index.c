
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int stk3310_get_index(const int table[][2], int table_size,
        int val, int val2)
{
 int i;

 for (i = 0; i < table_size; i++) {
  if (val == table[i][0] && val2 == table[i][1])
   return i;
 }

 return -EINVAL;
}
