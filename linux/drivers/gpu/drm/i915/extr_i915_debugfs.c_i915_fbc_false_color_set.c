
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_2__ {int lock; scalar_t__ false_color; } ;
struct drm_i915_private {TYPE_1__ fbc; } ;


 int ENODEV ;
 int FBC_CTL_FALSE_COLOR ;
 int HAS_FBC (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int ILK_DPFC_CONTROL ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i915_fbc_false_color_set(void *data, u64 val)
{
 struct drm_i915_private *dev_priv = data;
 u32 reg;

 if (INTEL_GEN(dev_priv) < 7 || !HAS_FBC(dev_priv))
  return -ENODEV;

 mutex_lock(&dev_priv->fbc.lock);

 reg = I915_READ(ILK_DPFC_CONTROL);
 dev_priv->fbc.false_color = val;

 I915_WRITE(ILK_DPFC_CONTROL, val ?
     (reg | FBC_CTL_FALSE_COLOR) :
     (reg & ~FBC_CTL_FALSE_COLOR));

 mutex_unlock(&dev_priv->fbc.lock);
 return 0;
}
