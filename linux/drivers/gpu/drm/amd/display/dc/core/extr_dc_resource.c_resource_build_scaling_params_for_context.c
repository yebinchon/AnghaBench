
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* pipe_ctx; } ;
struct dc_state {TYPE_1__ res_ctx; } ;
struct dc {int dummy; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_4__ {int * stream; int * plane_state; } ;


 int DC_FAIL_SCALING ;
 int DC_OK ;
 int MAX_PIPES ;
 int resource_build_scaling_params (TYPE_2__*) ;

enum dc_status resource_build_scaling_params_for_context(
 const struct dc *dc,
 struct dc_state *context)
{
 int i;

 for (i = 0; i < MAX_PIPES; i++) {
  if (context->res_ctx.pipe_ctx[i].plane_state != ((void*)0) &&
    context->res_ctx.pipe_ctx[i].stream != ((void*)0))
   if (!resource_build_scaling_params(&context->res_ctx.pipe_ctx[i]))
    return DC_FAIL_SCALING;
 }

 return DC_OK;
}
