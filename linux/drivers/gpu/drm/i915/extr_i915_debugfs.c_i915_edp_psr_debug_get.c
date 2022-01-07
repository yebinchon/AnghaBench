
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int debug; } ;
struct drm_i915_private {TYPE_1__ psr; } ;


 int CAN_PSR (struct drm_i915_private*) ;
 int ENODEV ;
 int READ_ONCE (int ) ;

__attribute__((used)) static int
i915_edp_psr_debug_get(void *data, u64 *val)
{
 struct drm_i915_private *dev_priv = data;

 if (!CAN_PSR(dev_priv))
  return -ENODEV;

 *val = READ_ONCE(dev_priv->psr.debug);
 return 0;
}
