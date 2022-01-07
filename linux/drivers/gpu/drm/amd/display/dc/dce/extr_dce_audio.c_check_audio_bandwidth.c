
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union audio_sample_rates {int dummy; } audio_sample_rates ;
typedef int uint32_t ;
struct audio_crtc_info {int dummy; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;






 int check_audio_bandwidth_dpmst (struct audio_crtc_info const*,int ,union audio_sample_rates*) ;
 int check_audio_bandwidth_dpsst (struct audio_crtc_info const*,int ,union audio_sample_rates*) ;
 int check_audio_bandwidth_hdmi (struct audio_crtc_info const*,int ,union audio_sample_rates*) ;

__attribute__((used)) static void check_audio_bandwidth(
 const struct audio_crtc_info *crtc_info,
 uint32_t channel_count,
 enum signal_type signal,
 union audio_sample_rates *sample_rates)
{
 switch (signal) {
 case 128:
  check_audio_bandwidth_hdmi(
   crtc_info, channel_count, sample_rates);
  break;
 case 129:
 case 131:
  check_audio_bandwidth_dpsst(
   crtc_info, channel_count, sample_rates);
  break;
 case 130:
  check_audio_bandwidth_dpmst(
   crtc_info, channel_count, sample_rates);
  break;
 default:
  break;
 }
}
