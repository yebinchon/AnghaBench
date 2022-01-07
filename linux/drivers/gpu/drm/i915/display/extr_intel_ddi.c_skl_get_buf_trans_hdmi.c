
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct ddi_buf_trans {int dummy; } ;


 int ARRAY_SIZE (struct ddi_buf_trans const*) ;
 scalar_t__ IS_CFL_ULX (struct drm_i915_private*) ;
 scalar_t__ IS_KBL_ULX (struct drm_i915_private*) ;
 scalar_t__ IS_SKL_ULX (struct drm_i915_private*) ;
 struct ddi_buf_trans const* skl_ddi_translations_hdmi ;
 struct ddi_buf_trans const* skl_y_ddi_translations_hdmi ;

__attribute__((used)) static const struct ddi_buf_trans *
skl_get_buf_trans_hdmi(struct drm_i915_private *dev_priv, int *n_entries)
{
 if (IS_SKL_ULX(dev_priv) || IS_KBL_ULX(dev_priv) ||
     IS_CFL_ULX(dev_priv)) {
  *n_entries = ARRAY_SIZE(skl_y_ddi_translations_hdmi);
  return skl_y_ddi_translations_hdmi;
 } else {
  *n_entries = ARRAY_SIZE(skl_ddi_translations_hdmi);
  return skl_ddi_translations_hdmi;
 }
}
