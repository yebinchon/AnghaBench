
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct hubp* hubp; } ;
struct pipe_ctx {TYPE_4__* stream; TYPE_1__ plane_res; } ;
struct hubp {TYPE_5__* funcs; } ;
struct TYPE_7__ {int quad_part; } ;
struct dc_dmdata_attributes {int dmdata_size; int dmdata_repeat; int dmdata_updated; int * dmdata_sw_data; scalar_t__ dmdata_qos_level; scalar_t__ dmdata_qos_mode; scalar_t__ dmdata_dl_delta; TYPE_2__ address; int dmdata_mode; int member_0; } ;
struct TYPE_10__ {int (* dmdata_set_attributes ) (struct hubp*,struct dc_dmdata_attributes*) ;} ;
struct TYPE_8__ {int quad_part; } ;
struct TYPE_9__ {TYPE_3__ dmdata_address; int signal; } ;


 int DMDATA_HW_MODE ;
 scalar_t__ dc_is_hdmi_signal (int ) ;
 int stub1 (struct hubp*,struct dc_dmdata_attributes*) ;

void dcn20_set_dmdata_attributes(struct pipe_ctx *pipe_ctx)
{
 struct dc_dmdata_attributes attr = { 0 };
 struct hubp *hubp = pipe_ctx->plane_res.hubp;

 attr.dmdata_mode = DMDATA_HW_MODE;
 attr.dmdata_size =
  dc_is_hdmi_signal(pipe_ctx->stream->signal) ? 32 : 36;
 attr.address.quad_part =
   pipe_ctx->stream->dmdata_address.quad_part;
 attr.dmdata_dl_delta = 0;
 attr.dmdata_qos_mode = 0;
 attr.dmdata_qos_level = 0;
 attr.dmdata_repeat = 1;
 attr.dmdata_updated = 1;
 attr.dmdata_sw_data = ((void*)0);

 hubp->funcs->dmdata_set_attributes(hubp, &attr);
}
