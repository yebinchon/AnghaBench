
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int DSP_OPT_ULAW ;
 scalar_t__* dsp_audio_alaw_to_s32 ;
 size_t* dsp_audio_alaw_to_ulaw ;
 int* dsp_audio_law2seven ;
 size_t* dsp_audio_seven2law ;
 size_t* dsp_audio_ulaw_to_alaw ;
 int dsp_options ;

void
dsp_audio_generate_seven(void)
{
 int i, j, k;
 u8 spl;
 u8 sorted_alaw[256];


 for (i = 0; i < 256; i++) {
  j = 0;
  for (k = 0; k < 256; k++) {
   if (dsp_audio_alaw_to_s32[k]
       < dsp_audio_alaw_to_s32[i])
    j++;
  }
  sorted_alaw[j] = i;
 }


 for (i = 0; i < 256; i++) {

  spl = i;
  if (dsp_options & DSP_OPT_ULAW)
   spl = dsp_audio_ulaw_to_alaw[i];

  for (j = 0; j < 256; j++) {
   if (sorted_alaw[j] == spl)
    break;
  }

  dsp_audio_law2seven[i] = j >> 1;
 }
 for (i = 0; i < 128; i++) {
  spl = sorted_alaw[i << 1];
  if (dsp_options & DSP_OPT_ULAW)
   spl = dsp_audio_alaw_to_ulaw[spl];
  dsp_audio_seven2law[i] = spl;
 }
}
