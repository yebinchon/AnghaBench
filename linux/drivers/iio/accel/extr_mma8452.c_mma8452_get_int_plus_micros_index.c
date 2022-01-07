
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int mma8452_get_int_plus_micros_index(const int (*vals)[2], int n,
          int val, int val2)
{
 while (n-- > 0)
  if (val == vals[n][0] && val2 == vals[n][1])
   return n;

 return -EINVAL;
}
