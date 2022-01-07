
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tv_mode {int dummy; } ;
struct drm_display_mode {int vdisplay; } ;


 int intel_tv_mode_vdisplay (struct tv_mode const*) ;

__attribute__((used)) static bool
intel_tv_is_preferred_mode(const struct drm_display_mode *mode,
      const struct tv_mode *tv_mode)
{
 int vdisplay = intel_tv_mode_vdisplay(tv_mode);


 if (vdisplay <= 576)
  vdisplay = 480;

 return vdisplay == mode->vdisplay;
}
