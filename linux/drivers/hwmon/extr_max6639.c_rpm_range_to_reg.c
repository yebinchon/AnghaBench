
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int* rpm_ranges ;

__attribute__((used)) static int rpm_range_to_reg(int range)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(rpm_ranges); i++) {
  if (rpm_ranges[i] == range)
   return i;
 }

 return 1;
}
