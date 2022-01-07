
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ enabled_slices; } ;
struct TYPE_5__ {TYPE_1__ ddb; } ;
struct TYPE_6__ {TYPE_2__ skl_hw; } ;
struct drm_i915_private {TYPE_3__ wm; } ;


 int DBUF_CTL_S2 ;
 int DRM_ERROR (char*) ;
 scalar_t__ intel_dbuf_max_slices (struct drm_i915_private*) ;
 int intel_dbuf_slice_set (struct drm_i915_private*,int ,int) ;

void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
       u8 req_slices)
{
 const u8 hw_enabled_slices = dev_priv->wm.skl_hw.ddb.enabled_slices;
 bool ret;

 if (req_slices > intel_dbuf_max_slices(dev_priv)) {
  DRM_ERROR("Invalid number of dbuf slices requested\n");
  return;
 }

 if (req_slices == hw_enabled_slices || req_slices == 0)
  return;

 if (req_slices > hw_enabled_slices)
  ret = intel_dbuf_slice_set(dev_priv, DBUF_CTL_S2, 1);
 else
  ret = intel_dbuf_slice_set(dev_priv, DBUF_CTL_S2, 0);

 if (ret)
  dev_priv->wm.skl_hw.ddb.enabled_slices = req_slices;
}
