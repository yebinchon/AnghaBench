
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tvenc_mode {int mode; } ;
struct drm_display_mode {int dummy; } ;


 int ARRAY_SIZE (struct zx_tvenc_mode**) ;
 scalar_t__ drm_mode_equal (struct drm_display_mode*,int *) ;
 struct zx_tvenc_mode** tvenc_modes ;

__attribute__((used)) static const struct zx_tvenc_mode *
zx_tvenc_find_zmode(struct drm_display_mode *mode)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(tvenc_modes); i++) {
  const struct zx_tvenc_mode *zmode = tvenc_modes[i];

  if (drm_mode_equal(mode, &zmode->mode))
   return zmode;
 }

 return ((void*)0);
}
