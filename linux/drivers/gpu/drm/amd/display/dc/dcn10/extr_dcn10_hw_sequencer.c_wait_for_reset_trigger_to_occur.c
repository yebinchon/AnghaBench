
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timing_generator {TYPE_1__* funcs; } ;
struct dc_context {int dummy; } ;
struct TYPE_2__ {int (* wait_for_state ) (struct timing_generator*,int ) ;scalar_t__ (* did_triggered_reset_occur ) (struct timing_generator*) ;int (* is_counter_moving ) (struct timing_generator*) ;} ;


 int CRTC_STATE_VACTIVE ;
 int CRTC_STATE_VBLANK ;
 int DC_ERROR (char*) ;
 int DC_SYNC_INFO (char*,int) ;
 int stub1 (struct timing_generator*) ;
 scalar_t__ stub2 (struct timing_generator*) ;
 int stub3 (struct timing_generator*,int ) ;
 int stub4 (struct timing_generator*,int ) ;

__attribute__((used)) static bool wait_for_reset_trigger_to_occur(
 struct dc_context *dc_ctx,
 struct timing_generator *tg)
{
 bool rc = 0;



 const uint32_t frames_to_wait_on_triggered_reset = 10;
 int i;

 for (i = 0; i < frames_to_wait_on_triggered_reset; i++) {

  if (!tg->funcs->is_counter_moving(tg)) {
   DC_ERROR("TG counter is not moving!\n");
   break;
  }

  if (tg->funcs->did_triggered_reset_occur(tg)) {
   rc = 1;

   DC_SYNC_INFO("GSL: reset occurred at wait count: %d\n",
     i);
   break;
  }


  tg->funcs->wait_for_state(tg, CRTC_STATE_VACTIVE);
  tg->funcs->wait_for_state(tg, CRTC_STATE_VBLANK);
 }

 if (0 == rc)
  DC_ERROR("GSL: Timeout on reset trigger!\n");

 return rc;
}
