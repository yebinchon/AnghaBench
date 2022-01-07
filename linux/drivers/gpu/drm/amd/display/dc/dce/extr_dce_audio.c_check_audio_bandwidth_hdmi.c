
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ RATE_88_2; scalar_t__ RATE_96; scalar_t__ RATE_176_4; scalar_t__ RATE_192; } ;
union audio_sample_rates {TYPE_1__ rate; } ;
typedef int uint32_t ;
struct audio_crtc_info {int requested_pixel_clock_100Hz; int v_active; int pixel_repetition; int h_total; int h_active; int refresh_rate; int color_depth; scalar_t__ interlaced; } ;






__attribute__((used)) static void check_audio_bandwidth_hdmi(
 const struct audio_crtc_info *crtc_info,
 uint32_t channel_count,
 union audio_sample_rates *sample_rates)
{
 uint32_t samples;
 uint32_t h_blank;
 bool limit_freq_to_48_khz = 0;
 bool limit_freq_to_88_2_khz = 0;
 bool limit_freq_to_96_khz = 0;
 bool limit_freq_to_174_4_khz = 0;


 if (channel_count > 2) {


  if ((crtc_info->requested_pixel_clock_100Hz <= 270000) &&
  (crtc_info->v_active <= 576) &&
  !(crtc_info->interlaced) &&
  !(crtc_info->pixel_repetition == 2 ||
  crtc_info->pixel_repetition == 4)) {
   limit_freq_to_48_khz = 1;

  } else if ((crtc_info->requested_pixel_clock_100Hz <= 270000) &&
    (crtc_info->v_active <= 576) &&
    (crtc_info->interlaced) &&
    (crtc_info->pixel_repetition == 2)) {
   limit_freq_to_88_2_khz = 1;

  } else if ((crtc_info->requested_pixel_clock_100Hz <= 540000) &&
    (crtc_info->v_active <= 576) &&
    !(crtc_info->interlaced)) {
   limit_freq_to_174_4_khz = 1;
  }
 }




 h_blank = crtc_info->h_total - crtc_info->h_active;

 if (crtc_info->pixel_repetition)
  h_blank *= crtc_info->pixel_repetition;


 h_blank -= 58;

 h_blank -= 16;

 samples = h_blank * 10;



 samples /= 32;
 samples *= crtc_info->v_active;

 samples *= crtc_info->refresh_rate;

 samples /= 10;
 switch (crtc_info->color_depth) {
 case 128:
  samples *= 4;
  break;
 case 130:
  samples *= 5;
  break;
 case 129:
  samples *= 6;
  break;
 default:
  samples *= 4;
  break;
 }

 samples /= 4;


 if (samples < 88200)
  limit_freq_to_48_khz = 1;
 else if (samples < 96000)
  limit_freq_to_88_2_khz = 1;
 else if (samples < 176400)
  limit_freq_to_96_khz = 1;
 else if (samples < 192000)
  limit_freq_to_174_4_khz = 1;

 if (sample_rates != ((void*)0)) {

  if (limit_freq_to_174_4_khz)
   sample_rates->rate.RATE_192 = 0;

  if (limit_freq_to_96_khz) {
   sample_rates->rate.RATE_192 = 0;
   sample_rates->rate.RATE_176_4 = 0;
  }
  if (limit_freq_to_88_2_khz) {
   sample_rates->rate.RATE_192 = 0;
   sample_rates->rate.RATE_176_4 = 0;
   sample_rates->rate.RATE_96 = 0;
  }
  if (limit_freq_to_48_khz) {
   sample_rates->rate.RATE_192 = 0;
   sample_rates->rate.RATE_176_4 = 0;
   sample_rates->rate.RATE_96 = 0;
   sample_rates->rate.RATE_88_2 = 0;
  }
 }
}
