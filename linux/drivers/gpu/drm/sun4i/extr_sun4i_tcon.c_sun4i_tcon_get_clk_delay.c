
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int vtotal; int vdisplay; int flags; } ;


 int DRM_DEBUG_DRIVER (char*,int,int) ;
 int DRM_MODE_FLAG_INTERLACE ;
 int min (int,int) ;

__attribute__((used)) static int sun4i_tcon_get_clk_delay(const struct drm_display_mode *mode,
        int channel)
{
 int delay = mode->vtotal - mode->vdisplay;

 if (mode->flags & DRM_MODE_FLAG_INTERLACE)
  delay /= 2;

 if (channel == 1)
  delay -= 2;

 delay = min(delay, 30);

 DRM_DEBUG_DRIVER("TCON %d clock delay %u\n", channel, delay);

 return delay;
}
