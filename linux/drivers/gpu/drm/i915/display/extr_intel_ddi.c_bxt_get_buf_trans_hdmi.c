
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct bxt_ddi_buf_trans {int dummy; } ;


 int ARRAY_SIZE (struct bxt_ddi_buf_trans const*) ;
 struct bxt_ddi_buf_trans const* bxt_ddi_translations_hdmi ;

__attribute__((used)) static const struct bxt_ddi_buf_trans *
bxt_get_buf_trans_hdmi(struct drm_i915_private *dev_priv, int *n_entries)
{
 *n_entries = ARRAY_SIZE(bxt_ddi_translations_hdmi);
 return bxt_ddi_translations_hdmi;
}
