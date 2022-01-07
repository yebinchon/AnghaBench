
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 int max (unsigned int,unsigned int) ;
 unsigned int min (int,unsigned int) ;

__attribute__((used)) static void amdgpu_pll_get_fb_ref_div(unsigned nom, unsigned den, unsigned post_div,
          unsigned fb_div_max, unsigned ref_div_max,
          unsigned *fb_div, unsigned *ref_div)
{

 ref_div_max = min(128 / post_div, ref_div_max);


 *ref_div = min(max(DIV_ROUND_CLOSEST(den, post_div), 1u), ref_div_max);
 *fb_div = DIV_ROUND_CLOSEST(nom * *ref_div * post_div, den);


 if (*fb_div > fb_div_max) {
  *ref_div = DIV_ROUND_CLOSEST(*ref_div * fb_div_max, *fb_div);
  *fb_div = fb_div_max;
 }
}
