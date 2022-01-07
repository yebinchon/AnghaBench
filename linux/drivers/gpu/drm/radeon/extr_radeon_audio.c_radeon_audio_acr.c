
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef struct radeon_hdmi_acr {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; unsigned int clock; int n_48khz; int cts_48khz; int n_44_1khz; int cts_44_1khz; int n_32khz; int cts_32khz; } const radeon_hdmi_acr ;


 size_t ARRAY_SIZE (struct radeon_hdmi_acr const*) ;
 int radeon_audio_calc_cts (unsigned int,int *,int *,int) ;

__attribute__((used)) static const struct radeon_hdmi_acr* radeon_audio_acr(unsigned int clock)
{
 static struct radeon_hdmi_acr res;
 u8 i;

 static const struct radeon_hdmi_acr hdmi_predefined_acr[] = {


  { 25175, 4096, 25175, 28224, 125875, 6144, 25175 },
  { 25200, 4096, 25200, 6272, 28000, 6144, 25200 },
  { 27000, 4096, 27000, 6272, 30000, 6144, 27000 },
  { 27027, 4096, 27027, 6272, 30030, 6144, 27027 },
  { 54000, 4096, 54000, 6272, 60000, 6144, 54000 },
  { 54054, 4096, 54054, 6272, 60060, 6144, 54054 },
  { 74176, 4096, 74176, 5733, 75335, 6144, 74176 },
  { 74250, 4096, 74250, 6272, 82500, 6144, 74250 },
  { 148352, 4096, 148352, 5733, 150670, 6144, 148352 },
  { 148500, 4096, 148500, 6272, 165000, 6144, 148500 },
 };


 for (i = 0; i < ARRAY_SIZE(hdmi_predefined_acr); i++)
  if (hdmi_predefined_acr[i].clock == clock)
   return &hdmi_predefined_acr[i];


 radeon_audio_calc_cts(clock, &res.cts_32khz, &res.n_32khz, 32000);
 radeon_audio_calc_cts(clock, &res.cts_44_1khz, &res.n_44_1khz, 44100);
 radeon_audio_calc_cts(clock, &res.cts_48khz, &res.n_48khz, 48000);

 return &res;
}
