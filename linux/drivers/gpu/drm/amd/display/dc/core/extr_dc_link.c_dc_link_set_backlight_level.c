
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint32_t ;
struct dmcu {TYPE_3__* funcs; } ;
struct dc_link {int connector_signal; TYPE_2__* ctx; } ;
struct dc {TYPE_9__* current_state; TYPE_1__* res_pool; } ;
struct abm {TYPE_10__* funcs; } ;
struct TYPE_19__ {TYPE_7__* pipe_ctx; } ;
struct TYPE_20__ {TYPE_8__ res_ctx; } ;
struct TYPE_17__ {TYPE_5__* tg; } ;
struct TYPE_18__ {int * plane_state; TYPE_6__ stream_res; TYPE_4__* stream; } ;
struct TYPE_16__ {int inst; } ;
struct TYPE_15__ {struct dc_link const* link; } ;
struct TYPE_14__ {int (* is_dmcu_initialized ) (struct dmcu*) ;} ;
struct TYPE_13__ {int logger; struct dc* dc; } ;
struct TYPE_12__ {struct dmcu* dmcu; struct abm* abm; } ;
struct TYPE_11__ {int (* set_backlight_level_pwm ) (struct abm*,int ,int ,unsigned int,int) ;} ;


 int DC_LOGGER_INIT (int ) ;
 int DC_LOG_BACKLIGHT (char*,int ,int ) ;
 int MAX_PIPES ;
 scalar_t__ dc_is_embedded_signal (int ) ;
 int stub1 (struct dmcu*) ;
 int stub2 (struct abm*,int ,int ,unsigned int,int) ;

bool dc_link_set_backlight_level(const struct dc_link *link,
  uint32_t backlight_pwm_u16_16,
  uint32_t frame_ramp)
{
 struct dc *core_dc = link->ctx->dc;
 struct abm *abm = core_dc->res_pool->abm;
 struct dmcu *dmcu = core_dc->res_pool->dmcu;
 unsigned int controller_id = 0;
 bool use_smooth_brightness = 1;
 int i;
 DC_LOGGER_INIT(link->ctx->logger);

 if ((dmcu == ((void*)0)) ||
  (abm == ((void*)0)) ||
  (abm->funcs->set_backlight_level_pwm == ((void*)0)))
  return 0;

 use_smooth_brightness = dmcu->funcs->is_dmcu_initialized(dmcu);

 DC_LOG_BACKLIGHT("New Backlight level: %d (0x%X)\n",
   backlight_pwm_u16_16, backlight_pwm_u16_16);

 if (dc_is_embedded_signal(link->connector_signal)) {
  for (i = 0; i < MAX_PIPES; i++) {
   if (core_dc->current_state->res_ctx.pipe_ctx[i].stream) {
    if (core_dc->current_state->res_ctx.
      pipe_ctx[i].stream->link
      == link) {



     controller_id =
      core_dc->current_state->
      res_ctx.pipe_ctx[i].stream_res.tg->inst +
      1;




     if (core_dc->current_state->res_ctx.pipe_ctx[i].plane_state == ((void*)0))
      frame_ramp = 0;
    }
   }
  }
  abm->funcs->set_backlight_level_pwm(
    abm,
    backlight_pwm_u16_16,
    frame_ramp,
    controller_id,
    use_smooth_brightness);
 }

 return 1;
}
