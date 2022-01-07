
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gpu_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int ENODEV ;
 struct i915_gpu_state* ERR_PTR (int ) ;

__attribute__((used)) static inline struct i915_gpu_state *
i915_first_error_state(struct drm_i915_private *i915)
{
 return ERR_PTR(-ENODEV);
}
