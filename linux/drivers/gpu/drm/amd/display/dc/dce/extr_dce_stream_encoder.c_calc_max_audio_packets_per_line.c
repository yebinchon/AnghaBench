
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct audio_crtc_info {int h_total; int h_active; int pixel_repetition; } ;



__attribute__((used)) static uint32_t calc_max_audio_packets_per_line(
 const struct audio_crtc_info *crtc_info)
{
 uint32_t max_packets_per_line;

 max_packets_per_line =
  crtc_info->h_total - crtc_info->h_active;

 if (crtc_info->pixel_repetition)
  max_packets_per_line *= crtc_info->pixel_repetition;


 max_packets_per_line -= 58;

 max_packets_per_line -= 16;

 max_packets_per_line /= 32;

 return max_packets_per_line;
}
