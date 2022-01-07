
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tv_mode {scalar_t__ vdisplay; int name; } ;
struct drm_display_mode {scalar_t__ vdisplay; int name; } ;


 int ARRAY_SIZE (struct tv_mode*) ;
 int DRM_DEBUG_DRIVER (char*,int ,int ,...) ;
 int strcmp (int ,int ) ;
 struct tv_mode* tv_modes ;

__attribute__((used)) static const struct tv_mode *sun4i_tv_find_tv_by_mode(const struct drm_display_mode *mode)
{
 int i;


 for (i = 0; i < ARRAY_SIZE(tv_modes); i++) {
  const struct tv_mode *tv_mode = &tv_modes[i];

  DRM_DEBUG_DRIVER("Comparing mode %s vs %s",
     mode->name, tv_mode->name);

  if (!strcmp(mode->name, tv_mode->name))
   return tv_mode;
 }


 for (i = 0; i < ARRAY_SIZE(tv_modes); i++) {
  const struct tv_mode *tv_mode = &tv_modes[i];

  DRM_DEBUG_DRIVER("Comparing mode %s vs %s (X: %d vs %d)",
     mode->name, tv_mode->name,
     mode->vdisplay, tv_mode->vdisplay);

  if (mode->vdisplay == tv_mode->vdisplay)
   return tv_mode;
 }

 return ((void*)0);
}
