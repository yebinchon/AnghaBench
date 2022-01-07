
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int crtc_htotal; int crtc_clock; } ;


 int DIV_ROUND_UP (int,int) ;

int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
        int usecs)
{

 if (!adjusted_mode->crtc_htotal)
  return 1;

 return DIV_ROUND_UP(usecs * adjusted_mode->crtc_clock,
       1000 * adjusted_mode->crtc_htotal);
}
