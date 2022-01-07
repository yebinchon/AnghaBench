
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_params {int dummy; } ;
struct drm_printer {int dummy; } ;
struct drm_i915_error_state_buf {int dummy; } ;


 struct drm_printer i915_error_printer (struct drm_i915_error_state_buf*) ;
 int i915_params_dump (struct i915_params const*,struct drm_printer*) ;

__attribute__((used)) static void err_print_params(struct drm_i915_error_state_buf *m,
        const struct i915_params *params)
{
 struct drm_printer p = i915_error_printer(m);

 i915_params_dump(params, &p);
}
