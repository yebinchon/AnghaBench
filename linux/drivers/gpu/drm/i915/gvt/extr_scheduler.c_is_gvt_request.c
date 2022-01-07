
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int gem_context; } ;


 int i915_gem_context_force_single_submission (int ) ;

__attribute__((used)) static inline bool is_gvt_request(struct i915_request *req)
{
 return i915_gem_context_force_single_submission(req->gem_context);
}
