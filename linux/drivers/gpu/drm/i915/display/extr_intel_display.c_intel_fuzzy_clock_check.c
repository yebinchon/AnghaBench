
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;

bool intel_fuzzy_clock_check(int clock1, int clock2)
{
 int diff;

 if (clock1 == clock2)
  return 1;

 if (!clock1 || !clock2)
  return 0;

 diff = abs(clock1 - clock2);

 if (((((diff + clock1 + clock2) * 100)) / (clock1 + clock2)) < 105)
  return 1;

 return 0;
}
