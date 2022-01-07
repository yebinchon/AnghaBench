
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int TIMECODES ;
 int abs (int) ;
 int* time_codes ;

__attribute__((used)) static int choose_times(int msec, int *c1p, int *c2p)
{
 int c1, c2;
 int tmax = msec * 9 / 8;
 int tmin = msec * 7 / 8;
 int diff = 65536;




 for (c1 = 1; c1 < TIMECODES; c1++) {
  int t = time_codes[c1];
  if (t*2 < tmin)
   continue;
  if (t > tmax)
   break;
  for (c2 = 0; c2 <= c1; c2++) {
   int tt = t + time_codes[c2];
   int d;
   if (tt < tmin)
    continue;
   if (tt > tmax)
    break;

   d = abs(msec - tt);
   if (d >= diff)
    continue;

   *c1p = c1;
   *c2p = c2;
   diff = d;
   if (d == 0)
    return msec;
  }
 }
 if (diff < 65536) {
  int actual;
  if (msec & 1) {
   c1 = *c2p;
   *c2p = *c1p;
   *c1p = c1;
  }
  actual = time_codes[*c1p] + time_codes[*c2p];
  if (*c1p < *c2p)
   return actual + 1;
  else
   return actual;
 }

 return -EINVAL;
}
