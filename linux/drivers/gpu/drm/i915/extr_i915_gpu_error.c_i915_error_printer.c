
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_printer {struct drm_i915_error_state_buf* arg; int printfn; } ;
struct drm_i915_error_state_buf {int dummy; } ;


 int __i915_printfn_error ;

__attribute__((used)) static inline struct drm_printer
i915_error_printer(struct drm_i915_error_state_buf *e)
{
 struct drm_printer p = {
  .printfn = __i915_printfn_error,
  .arg = e,
 };
 return p;
}
