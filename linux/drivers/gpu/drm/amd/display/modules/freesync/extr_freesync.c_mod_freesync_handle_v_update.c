
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ramping_active; } ;
struct TYPE_5__ {void* v_total_max; void* v_total_min; } ;
struct TYPE_4__ {scalar_t__ frames_to_insert; scalar_t__ frame_counter; int inserted_duration_in_us; scalar_t__ btr_active; } ;
struct mod_vrr_params {int supported; scalar_t__ state; TYPE_3__ fixed; int min_refresh_in_uhz; TYPE_2__ adjust; int max_refresh_in_uhz; TYPE_1__ btr; } ;
struct mod_freesync {int dummy; } ;
struct dc_stream_state {int dummy; } ;
struct core_freesync {int dummy; } ;


 struct core_freesync* MOD_FREESYNC_TO_CORE (struct mod_freesync*) ;
 scalar_t__ VRR_STATE_ACTIVE_FIXED ;
 scalar_t__ VRR_STATE_ACTIVE_VARIABLE ;
 void* calc_v_total_from_duration (struct dc_stream_state const*,struct mod_vrr_params*,int ) ;
 void* calc_v_total_from_refresh (struct dc_stream_state const*,int ) ;
 int update_v_total_for_static_ramp (struct core_freesync*,struct dc_stream_state const*,struct mod_vrr_params*) ;

void mod_freesync_handle_v_update(struct mod_freesync *mod_freesync,
  const struct dc_stream_state *stream,
  struct mod_vrr_params *in_out_vrr)
{
 struct core_freesync *core_freesync = ((void*)0);

 if ((mod_freesync == ((void*)0)) || (stream == ((void*)0)) || (in_out_vrr == ((void*)0)))
  return;

 core_freesync = MOD_FREESYNC_TO_CORE(mod_freesync);

 if (in_out_vrr->supported == 0)
  return;




 if (in_out_vrr->state == VRR_STATE_ACTIVE_VARIABLE &&
     in_out_vrr->btr.btr_active) {







  if (in_out_vrr->btr.frames_to_insert ==
    in_out_vrr->btr.frame_counter) {
   in_out_vrr->adjust.v_total_min =
    calc_v_total_from_duration(stream,
    in_out_vrr,
    in_out_vrr->btr.inserted_duration_in_us);
   in_out_vrr->adjust.v_total_max =
    in_out_vrr->adjust.v_total_min;
  }

  if (in_out_vrr->btr.frame_counter > 0)
   in_out_vrr->btr.frame_counter--;


  if (in_out_vrr->btr.frame_counter == 0) {
   in_out_vrr->adjust.v_total_min =
    calc_v_total_from_refresh(stream,
    in_out_vrr->max_refresh_in_uhz);
   in_out_vrr->adjust.v_total_max =
    calc_v_total_from_refresh(stream,
    in_out_vrr->min_refresh_in_uhz);
  }
 }




 if (in_out_vrr->state == VRR_STATE_ACTIVE_VARIABLE)
  in_out_vrr->fixed.ramping_active = 0;



 if (in_out_vrr->state == VRR_STATE_ACTIVE_FIXED &&
    in_out_vrr->fixed.ramping_active) {
  update_v_total_for_static_ramp(
    core_freesync, stream, in_out_vrr);
 }
}
