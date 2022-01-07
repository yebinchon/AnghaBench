
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int**) ;
 int EINVAL ;
 int** si1133_int_time_table ;

__attribute__((used)) static int si1133_get_int_time_index(int milliseconds, int nanoseconds)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(si1133_int_time_table); i++) {
  if (milliseconds == si1133_int_time_table[i][0] &&
      nanoseconds == si1133_int_time_table[i][1])
   return i;
 }
 return -EINVAL;
}
