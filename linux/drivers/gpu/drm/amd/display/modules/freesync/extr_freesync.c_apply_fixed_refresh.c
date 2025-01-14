
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* v_total_max; void* v_total_min; } ;
struct TYPE_3__ {int fixed_active; scalar_t__ frame_counter; scalar_t__ target_refresh_in_uhz; } ;
struct mod_vrr_params {unsigned int max_duration_in_us; scalar_t__ min_refresh_in_uhz; TYPE_2__ adjust; scalar_t__ max_refresh_in_uhz; TYPE_1__ fixed; } ;
struct dc_stream_state {int dummy; } ;
struct core_freesync {int dummy; } ;


 scalar_t__ FIXED_REFRESH_ENTER_FRAME_COUNT ;
 scalar_t__ FIXED_REFRESH_EXIT_FRAME_COUNT ;
 int FIXED_REFRESH_EXIT_MARGIN_IN_HZ ;
 void* calc_v_total_from_refresh (struct dc_stream_state const*,scalar_t__) ;

__attribute__((used)) static void apply_fixed_refresh(struct core_freesync *core_freesync,
  const struct dc_stream_state *stream,
  unsigned int last_render_time_in_us,
  struct mod_vrr_params *in_out_vrr)
{
 bool update = 0;
 unsigned int max_render_time_in_us = in_out_vrr->max_duration_in_us;


 unsigned int exit_refresh_rate_in_milli_hz = ((1000000000/max_render_time_in_us)
   + (1000*FIXED_REFRESH_EXIT_MARGIN_IN_HZ));
 unsigned int exit_frame_duration_in_us = 1000000000/exit_refresh_rate_in_milli_hz;

 if (last_render_time_in_us < exit_frame_duration_in_us) {

  if (in_out_vrr->fixed.fixed_active) {
   in_out_vrr->fixed.frame_counter++;

   if (in_out_vrr->fixed.frame_counter >
     FIXED_REFRESH_EXIT_FRAME_COUNT) {
    in_out_vrr->fixed.frame_counter = 0;
    in_out_vrr->fixed.fixed_active = 0;
    in_out_vrr->fixed.target_refresh_in_uhz = 0;
    update = 1;
   }
  }
 } else if (last_render_time_in_us > max_render_time_in_us) {

  if (!in_out_vrr->fixed.fixed_active) {
   in_out_vrr->fixed.frame_counter++;

   if (in_out_vrr->fixed.frame_counter >
     FIXED_REFRESH_ENTER_FRAME_COUNT) {
    in_out_vrr->fixed.frame_counter = 0;
    in_out_vrr->fixed.fixed_active = 1;
    in_out_vrr->fixed.target_refresh_in_uhz =
      in_out_vrr->max_refresh_in_uhz;
    update = 1;
   }
  }
 }

 if (update) {
  if (in_out_vrr->fixed.fixed_active) {
   in_out_vrr->adjust.v_total_min =
    calc_v_total_from_refresh(
    stream, in_out_vrr->max_refresh_in_uhz);
   in_out_vrr->adjust.v_total_max =
     in_out_vrr->adjust.v_total_min;
  } else {
   in_out_vrr->adjust.v_total_min =
    calc_v_total_from_refresh(stream,
     in_out_vrr->max_refresh_in_uhz);
   in_out_vrr->adjust.v_total_max =
    calc_v_total_from_refresh(stream,
     in_out_vrr->min_refresh_in_uhz);
  }
 }
}
