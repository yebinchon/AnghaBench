
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int sti_hdmi_audio_get_non_coherent_n(unsigned int audio_fs)
{
 unsigned int n;

 switch (audio_fs) {
 case 32000:
  n = 4096;
  break;
 case 44100:
  n = 6272;
  break;
 case 48000:
  n = 6144;
  break;
 case 88200:
  n = 6272 * 2;
  break;
 case 96000:
  n = 6144 * 2;
  break;
 case 176400:
  n = 6272 * 4;
  break;
 case 192000:
  n = 6144 * 4;
  break;
 default:

  n = (audio_fs * 128) / 1000;
 }

 return n;
}
