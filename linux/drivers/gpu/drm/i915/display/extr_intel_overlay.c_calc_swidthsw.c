
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int ALIGN (int,int) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;

__attribute__((used)) static u32 calc_swidthsw(struct drm_i915_private *dev_priv, u32 offset, u32 width)
{
 u32 sw;

 if (IS_GEN(dev_priv, 2))
  sw = ALIGN((offset & 31) + width, 32);
 else
  sw = ALIGN((offset & 63) + width, 64);

 if (sw == 0)
  return 0;

 return (sw - 32) >> 3;
}
