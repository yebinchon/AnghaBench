
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_ppgtt {int vm; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_ERR (struct i915_ppgtt*) ;
 struct i915_ppgtt* __ppgtt_create (struct drm_i915_private*) ;
 int trace_i915_ppgtt_create (int *) ;

struct i915_ppgtt *
i915_ppgtt_create(struct drm_i915_private *i915)
{
 struct i915_ppgtt *ppgtt;

 ppgtt = __ppgtt_create(i915);
 if (IS_ERR(ppgtt))
  return ppgtt;

 trace_i915_ppgtt_create(&ppgtt->vm);

 return ppgtt;
}
