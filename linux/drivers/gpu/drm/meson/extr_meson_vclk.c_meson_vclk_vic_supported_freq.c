
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_2__ {int pixel_freq; } ;


 int DRM_DEBUG_DRIVER (char*,int,...) ;
 unsigned int FREQ_1000_1001 (int) ;
 int MODE_CLOCK_RANGE ;
 int MODE_OK ;
 TYPE_1__* params ;

enum drm_mode_status
meson_vclk_vic_supported_freq(unsigned int freq)
{
 int i;

 DRM_DEBUG_DRIVER("freq = %d\n", freq);

 for (i = 0 ; params[i].pixel_freq ; ++i) {
  DRM_DEBUG_DRIVER("i = %d pixel_freq = %d alt = %d\n",
     i, params[i].pixel_freq,
     FREQ_1000_1001(params[i].pixel_freq));

  if (freq == params[i].pixel_freq)
   return MODE_OK;

  if (freq == FREQ_1000_1001(params[i].pixel_freq))
   return MODE_OK;
 }

 return MODE_CLOCK_RANGE;
}
