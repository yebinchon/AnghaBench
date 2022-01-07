
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int alaw2linear (int ) ;
 int bitrev8 (int ) ;
 int * dsp_audio_alaw_to_s32 ;
 int * dsp_audio_alaw_to_ulaw ;
 int * dsp_audio_ulaw_to_alaw ;
 int * dsp_audio_ulaw_to_s32 ;
 int linear2alaw (int ) ;
 int linear2ulaw (int ) ;
 int ulaw2linear (int ) ;

void dsp_audio_generate_law_tables(void)
{
 int i;
 for (i = 0; i < 256; i++)
  dsp_audio_alaw_to_s32[i] = alaw2linear(bitrev8((u8)i));

 for (i = 0; i < 256; i++)
  dsp_audio_ulaw_to_s32[i] = ulaw2linear(bitrev8((u8)i));

 for (i = 0; i < 256; i++) {
  dsp_audio_alaw_to_ulaw[i] =
   linear2ulaw(dsp_audio_alaw_to_s32[i]);
  dsp_audio_ulaw_to_alaw[i] =
   linear2alaw(dsp_audio_ulaw_to_s32[i]);
 }
}
