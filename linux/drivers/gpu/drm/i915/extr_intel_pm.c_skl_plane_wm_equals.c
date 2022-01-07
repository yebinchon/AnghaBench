
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_plane_wm {int trans_wm; int * uv_wm; int * wm; } ;
struct drm_i915_private {int dummy; } ;


 int ilk_wm_max_level (struct drm_i915_private*) ;
 int skl_wm_level_equals (int *,int *) ;

__attribute__((used)) static bool skl_plane_wm_equals(struct drm_i915_private *dev_priv,
    const struct skl_plane_wm *wm1,
    const struct skl_plane_wm *wm2)
{
 int level, max_level = ilk_wm_max_level(dev_priv);

 for (level = 0; level <= max_level; level++) {
  if (!skl_wm_level_equals(&wm1->wm[level], &wm2->wm[level]) ||
      !skl_wm_level_equals(&wm1->uv_wm[level], &wm2->uv_wm[level]))
   return 0;
 }

 return skl_wm_level_equals(&wm1->trans_wm, &wm2->trans_wm);
}
