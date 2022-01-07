
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;

__attribute__((used)) static int r600_calculate_at(u32 t, u32 h, u32 fh, u32 fl, u32 *tl, u32 *th)
{
 u32 k, a, ah, al;
 u32 t1;

 if ((fl == 0) || (fh == 0) || (fl > fh))
  return -EINVAL;

 k = (100 * fh) / fl;
 t1 = (t * (k - 100));
 a = (1000 * (100 * h + t1)) / (10000 + (t1 / 100));
 a = (a + 5) / 10;
 ah = ((a * t) + 5000) / 10000;
 al = a - ah;

 *th = t - ah;
 *tl = t + al;

 return 0;
}
