
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct drm_i915_private {int edram_size_mb; TYPE_1__ drm; int uncore; } ;


 int EDRAM_ENABLED ;
 int HSW_EDRAM_CAP ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int __raw_uncore_read32 (int *,int ) ;
 int dev_info (int ,char*,int) ;
 int gen9_edram_size_mb (struct drm_i915_private*,int) ;

__attribute__((used)) static void edram_detect(struct drm_i915_private *dev_priv)
{
 u32 edram_cap = 0;

 if (!(IS_HASWELL(dev_priv) ||
       IS_BROADWELL(dev_priv) ||
       INTEL_GEN(dev_priv) >= 9))
  return;

 edram_cap = __raw_uncore_read32(&dev_priv->uncore, HSW_EDRAM_CAP);



 if (!(edram_cap & EDRAM_ENABLED))
  return;





 if (INTEL_GEN(dev_priv) < 9)
  dev_priv->edram_size_mb = 128;
 else
  dev_priv->edram_size_mb =
   gen9_edram_size_mb(dev_priv, edram_cap);

 dev_info(dev_priv->drm.dev,
   "Found %uMB of eDRAM\n", dev_priv->edram_size_mb);
}
