
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;



__attribute__((used)) static void rv6xx_calculate_t(u32 l_f, u32 h_f, int h,
         int d_l, int d_r, u8 *l, u8 *r)
{
 int a_n, a_d, h_r, l_r;

 h_r = d_l;
 l_r = 100 - d_r;

 a_n = (int)h_f * d_l + (int)l_f * (h - d_r);
 a_d = (int)l_f * l_r + (int)h_f * h_r;

 if (a_d != 0) {
  *l = d_l - h_r * a_n / a_d;
  *r = d_r + l_r * a_n / a_d;
 }
}
