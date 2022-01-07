
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* len; size_t* data; } ;


 size_t* dsp_audio_alaw_to_ulaw ;
 TYPE_1__* samples ;

void
dsp_audio_generate_ulaw_samples(void)
{
 int i, j;

 i = 0;
 while (samples[i].len) {
  j = 0;
  while (j < (*samples[i].len)) {
   samples[i].data[j] =
    dsp_audio_alaw_to_ulaw[samples[i].data[j]];
   j++;
  }
  i++;
 }
}
