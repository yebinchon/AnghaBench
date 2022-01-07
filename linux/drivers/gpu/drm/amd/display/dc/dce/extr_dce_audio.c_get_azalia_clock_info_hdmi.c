
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct azalia_clock_info {int audio_dto_phase; int audio_dto_module; } ;



__attribute__((used)) static void get_azalia_clock_info_hdmi(
 uint32_t crtc_pixel_clock_100hz,
 uint32_t actual_pixel_clock_100Hz,
 struct azalia_clock_info *azalia_clock_info)
{


 azalia_clock_info->audio_dto_phase =
   24 * 10000;



 azalia_clock_info->audio_dto_module =
   actual_pixel_clock_100Hz;
}
