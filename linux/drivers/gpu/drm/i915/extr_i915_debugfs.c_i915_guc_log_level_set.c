
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int log; } ;
struct TYPE_5__ {TYPE_1__ guc; } ;
struct TYPE_6__ {TYPE_2__ uc; } ;
struct drm_i915_private {TYPE_3__ gt; } ;


 int ENODEV ;
 int USES_GUC (struct drm_i915_private*) ;
 int intel_guc_log_set_level (int *,int ) ;

__attribute__((used)) static int i915_guc_log_level_set(void *data, u64 val)
{
 struct drm_i915_private *dev_priv = data;

 if (!USES_GUC(dev_priv))
  return -ENODEV;

 return intel_guc_log_set_level(&dev_priv->gt.uc.guc.log, val);
}
