
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_sw_context {struct vmw_buffer_object* dx_query_mob; int dx_query_ctx; int ctx; } ;
struct vmw_buffer_object {int dummy; } ;


 int EINVAL ;
 struct vmw_buffer_object* vmw_context_get_dx_query_mob (int ) ;
 int vmw_validation_res_reserve (int ,int) ;

__attribute__((used)) static int vmw_resources_reserve(struct vmw_sw_context *sw_context)
{
 int ret;

 ret = vmw_validation_res_reserve(sw_context->ctx, 1);
 if (ret)
  return ret;

 if (sw_context->dx_query_mob) {
  struct vmw_buffer_object *expected_dx_query_mob;

  expected_dx_query_mob =
   vmw_context_get_dx_query_mob(sw_context->dx_query_ctx);
  if (expected_dx_query_mob &&
      expected_dx_query_mob != sw_context->dx_query_mob) {
   ret = -EINVAL;
  }
 }

 return ret;
}
