
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {unsigned long pixelclock; unsigned long hactive; unsigned long hfront_porch; unsigned long hback_porch; unsigned long hsync_len; } ;
struct malidp_se_config {unsigned long input_w; unsigned long input_h; unsigned long output_h; scalar_t__ scale_enable; } ;
struct malidp_hw_device {int mclk; } ;


 int DRM_DEBUG_DRIVER (char*,unsigned long) ;
 long EINVAL ;
 long clk_get_rate (int ) ;

__attribute__((used)) static long malidp500_se_calc_mclk(struct malidp_hw_device *hwdev,
       struct malidp_se_config *se_config,
       struct videomode *vm)
{
 unsigned long mclk;
 unsigned long pxlclk = vm->pixelclock;
 unsigned long htotal = vm->hactive + vm->hfront_porch +
          vm->hback_porch + vm->hsync_len;
 unsigned long input_size = se_config->input_w * se_config->input_h;
 unsigned long a = 10;
 long ret;







 if (se_config->scale_enable) {
  a = 15 * input_size / (htotal * se_config->output_h);
  if (a < 15)
   a = 15;
 }
 mclk = a * pxlclk / 10;
 ret = clk_get_rate(hwdev->mclk);
 if (ret < mclk) {
  DRM_DEBUG_DRIVER("mclk requirement of %lu kHz can't be met.\n",
     mclk / 1000);
  return -EINVAL;
 }
 return ret;
}
