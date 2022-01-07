
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ei; } ;
struct TYPE_4__ {TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_2__ gt_pm; } ;


 int memset (int *,int ,int) ;

void gen6_rps_reset_ei(struct drm_i915_private *dev_priv)
{
 memset(&dev_priv->gt_pm.rps.ei, 0, sizeof(dev_priv->gt_pm.rps.ei));
}
