
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int btr_active; unsigned int frame_counter; unsigned int inserted_duration_in_us; unsigned int frames_to_insert; unsigned int mid_point_in_us; } ;
struct TYPE_3__ {void* v_total_max; void* v_total_min; } ;
struct mod_vrr_params {unsigned int max_duration_in_us; unsigned int min_duration_in_us; TYPE_2__ btr; int min_refresh_in_uhz; TYPE_1__ adjust; int max_refresh_in_uhz; } ;
struct dc_stream_state {int dummy; } ;
struct core_freesync {int dummy; } ;


 unsigned int BTR_DRIFT_MARGIN ;
 unsigned int BTR_EXIT_MARGIN ;
 void* calc_v_total_from_refresh (struct dc_stream_state const*,int ) ;
 scalar_t__ div64_u64 (unsigned long long,int ) ;

__attribute__((used)) static void apply_below_the_range(struct core_freesync *core_freesync,
  const struct dc_stream_state *stream,
  unsigned int last_render_time_in_us,
  struct mod_vrr_params *in_out_vrr)
{
 unsigned int inserted_frame_duration_in_us = 0;
 unsigned int mid_point_frames_ceil = 0;
 unsigned int mid_point_frames_floor = 0;
 unsigned int frame_time_in_us = 0;
 unsigned int delta_from_mid_point_in_us_1 = 0xFFFFFFFF;
 unsigned int delta_from_mid_point_in_us_2 = 0xFFFFFFFF;
 unsigned int frames_to_insert = 0;
 unsigned int min_frame_duration_in_ns = 0;
 unsigned int max_render_time_in_us = in_out_vrr->max_duration_in_us;
 unsigned int delta_from_mid_point_delta_in_us;

 min_frame_duration_in_ns = ((unsigned int) (div64_u64(
  (1000000000ULL * 1000000),
  in_out_vrr->max_refresh_in_uhz)));


 if (last_render_time_in_us + BTR_EXIT_MARGIN < max_render_time_in_us) {

  if (in_out_vrr->btr.btr_active) {
   in_out_vrr->btr.frame_counter = 0;
   in_out_vrr->btr.btr_active = 0;
  }
 } else if (last_render_time_in_us > max_render_time_in_us) {

  in_out_vrr->btr.btr_active = 1;
 }


 if (!in_out_vrr->btr.btr_active) {
  in_out_vrr->btr.inserted_duration_in_us = 0;
  in_out_vrr->btr.frames_to_insert = 0;
  in_out_vrr->btr.frame_counter = 0;


  in_out_vrr->adjust.v_total_min =
   calc_v_total_from_refresh(stream,
    in_out_vrr->max_refresh_in_uhz);
  in_out_vrr->adjust.v_total_max =
   calc_v_total_from_refresh(stream,
    in_out_vrr->min_refresh_in_uhz);

 } else {




  mid_point_frames_ceil = (last_render_time_in_us +
    in_out_vrr->btr.mid_point_in_us - 1) /
     in_out_vrr->btr.mid_point_in_us;

  if (mid_point_frames_ceil > 0) {
   frame_time_in_us = last_render_time_in_us /
    mid_point_frames_ceil;
   delta_from_mid_point_in_us_1 =
    (in_out_vrr->btr.mid_point_in_us >
    frame_time_in_us) ?
    (in_out_vrr->btr.mid_point_in_us - frame_time_in_us) :
    (frame_time_in_us - in_out_vrr->btr.mid_point_in_us);
  }




  mid_point_frames_floor = last_render_time_in_us /
    in_out_vrr->btr.mid_point_in_us;

  if (mid_point_frames_floor > 0) {

   frame_time_in_us = last_render_time_in_us /
    mid_point_frames_floor;
   delta_from_mid_point_in_us_2 =
    (in_out_vrr->btr.mid_point_in_us >
    frame_time_in_us) ?
    (in_out_vrr->btr.mid_point_in_us - frame_time_in_us) :
    (frame_time_in_us - in_out_vrr->btr.mid_point_in_us);
  }




  if (delta_from_mid_point_in_us_1 < delta_from_mid_point_in_us_2) {
   frames_to_insert = mid_point_frames_ceil;
   delta_from_mid_point_delta_in_us = delta_from_mid_point_in_us_2 -
     delta_from_mid_point_in_us_1;
  } else {
   frames_to_insert = mid_point_frames_floor;
   delta_from_mid_point_delta_in_us = delta_from_mid_point_in_us_1 -
     delta_from_mid_point_in_us_2;
  }




  if (in_out_vrr->btr.frames_to_insert != 0 &&
    delta_from_mid_point_delta_in_us < BTR_DRIFT_MARGIN) {
   if (((last_render_time_in_us / in_out_vrr->btr.frames_to_insert) <
     in_out_vrr->max_duration_in_us) &&
    ((last_render_time_in_us / in_out_vrr->btr.frames_to_insert) >
     in_out_vrr->min_duration_in_us))
    frames_to_insert = in_out_vrr->btr.frames_to_insert;
  }




  if (last_render_time_in_us / frames_to_insert <
    in_out_vrr->min_duration_in_us){
   frames_to_insert -= (frames_to_insert > 1) ?
     1 : 0;
  }

  if (frames_to_insert > 0)
   inserted_frame_duration_in_us = last_render_time_in_us /
       frames_to_insert;

  if (inserted_frame_duration_in_us < in_out_vrr->min_duration_in_us)
   inserted_frame_duration_in_us = in_out_vrr->min_duration_in_us;


  in_out_vrr->btr.inserted_duration_in_us =
   inserted_frame_duration_in_us;
  in_out_vrr->btr.frames_to_insert = frames_to_insert;
  in_out_vrr->btr.frame_counter = frames_to_insert;
 }
}
