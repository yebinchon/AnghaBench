
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DBUF_CTL ;
 int intel_dbuf_slice_set (struct drm_i915_private*,int ,int) ;

__attribute__((used)) static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
{
 intel_dbuf_slice_set(dev_priv, DBUF_CTL, 1);
}
