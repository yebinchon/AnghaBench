
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct azalia_clock_info {int audio_dto_phase; int audio_dto_module; } ;
struct audio_pll_info {int dp_dto_source_clock_in_khz; } ;



__attribute__((used)) static void get_azalia_clock_info_dp(
 uint32_t requested_pixel_clock_100Hz,
 const struct audio_pll_info *pll_info,
 struct azalia_clock_info *azalia_clock_info)
{







 azalia_clock_info->audio_dto_phase = 24 * 10000;



 azalia_clock_info->audio_dto_module =
  pll_info->dp_dto_source_clock_in_khz * 10;
}
