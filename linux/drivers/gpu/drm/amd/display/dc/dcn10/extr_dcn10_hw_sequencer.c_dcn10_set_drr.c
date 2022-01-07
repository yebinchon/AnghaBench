
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* tg; } ;
struct pipe_ctx {TYPE_2__ stream_res; } ;
struct drr_params {unsigned int vertical_total_max; unsigned int vertical_total_min; unsigned int vertical_total_mid; unsigned int vertical_total_mid_frame_num; int member_0; } ;
struct TYPE_7__ {TYPE_1__* funcs; } ;
struct TYPE_5__ {int (* set_static_screen_control ) (TYPE_3__*,unsigned int) ;int (* set_drr ) (TYPE_3__*,struct drr_params*) ;} ;


 int stub1 (TYPE_3__*,struct drr_params*) ;
 int stub2 (TYPE_3__*,unsigned int) ;

__attribute__((used)) static void dcn10_set_drr(struct pipe_ctx **pipe_ctx,
  int num_pipes, unsigned int vmin, unsigned int vmax,
  unsigned int vmid, unsigned int vmid_frame_number)
{
 int i = 0;
 struct drr_params params = {0};

 unsigned int event_triggers = 0x800;

 params.vertical_total_max = vmax;
 params.vertical_total_min = vmin;
 params.vertical_total_mid = vmid;
 params.vertical_total_mid_frame_num = vmid_frame_number;





 for (i = 0; i < num_pipes; i++) {
  pipe_ctx[i]->stream_res.tg->funcs->set_drr(
   pipe_ctx[i]->stream_res.tg, &params);
  if (vmax != 0 && vmin != 0)
   pipe_ctx[i]->stream_res.tg->funcs->set_static_screen_control(
     pipe_ctx[i]->stream_res.tg,
     event_triggers);
 }
}
