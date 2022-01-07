
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_sw_context {scalar_t__ dx_query_mob; int dx_query_ctx; } ;


 int vmw_context_bind_dx_query (int ,scalar_t__) ;

__attribute__((used)) static void vmw_bind_dx_query_mob(struct vmw_sw_context *sw_context)
{
 if (sw_context->dx_query_mob)
  vmw_context_bind_dx_query(sw_context->dx_query_ctx,
       sw_context->dx_query_mob);
}
