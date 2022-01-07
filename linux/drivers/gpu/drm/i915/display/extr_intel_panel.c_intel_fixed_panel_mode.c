
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;


 int drm_mode_copy (struct drm_display_mode*,struct drm_display_mode const*) ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;

void
intel_fixed_panel_mode(const struct drm_display_mode *fixed_mode,
         struct drm_display_mode *adjusted_mode)
{
 drm_mode_copy(adjusted_mode, fixed_mode);

 drm_mode_set_crtcinfo(adjusted_mode, 0);
}
