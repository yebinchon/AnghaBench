
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cxsr; } ;
struct TYPE_4__ {int cxsr; } ;
struct TYPE_6__ {int wm_mutex; TYPE_2__ g4x; TYPE_1__ vlv; } ;
struct drm_i915_private {TYPE_3__ wm; } ;


 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int _intel_set_memory_cxsr (struct drm_i915_private*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enable)
{
 bool ret;

 mutex_lock(&dev_priv->wm.wm_mutex);
 ret = _intel_set_memory_cxsr(dev_priv, enable);
 if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  dev_priv->wm.vlv.cxsr = enable;
 else if (IS_G4X(dev_priv))
  dev_priv->wm.g4x.cxsr = enable;
 mutex_unlock(&dev_priv->wm.wm_mutex);

 return ret;
}
