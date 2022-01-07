
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int adjust_dual(int *begin, int step, int *end, int eq, int mu)
{
 int f, *p, s, c;

 if (begin == end)
  return 0;

 f = *begin;
 p = begin + step;
 s = p == end ? f + 1 : *p;

 for (; p != end; p += step)
  if (*p < f)
   s = f, f = *p;
  else if (*p < s)
   s = *p;

 c = (f + s + 1) / 2;
 if (c == 0 || (c > mu && (!eq || mu > 0)))
  return 0;

 if (s < 0 && mu <= 0)
  c *= 2;

 for (p = begin; p != end; p += step)
  *p -= c;

 return (c < s && s <= 0) || (f >= 0 && f < c);
}
