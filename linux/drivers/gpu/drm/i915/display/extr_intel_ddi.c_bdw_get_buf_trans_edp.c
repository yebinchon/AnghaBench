
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ low_vswing; } ;
struct TYPE_4__ {TYPE_1__ edp; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct ddi_buf_trans {int dummy; } ;


 int ARRAY_SIZE (struct ddi_buf_trans const*) ;
 struct ddi_buf_trans const* bdw_ddi_translations_dp ;
 struct ddi_buf_trans const* bdw_ddi_translations_edp ;

__attribute__((used)) static const struct ddi_buf_trans *
bdw_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
{
 if (dev_priv->vbt.edp.low_vswing) {
  *n_entries = ARRAY_SIZE(bdw_ddi_translations_edp);
  return bdw_ddi_translations_edp;
 } else {
  *n_entries = ARRAY_SIZE(bdw_ddi_translations_dp);
  return bdw_ddi_translations_dp;
 }
}
