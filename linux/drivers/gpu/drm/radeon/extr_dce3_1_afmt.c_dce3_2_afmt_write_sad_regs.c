
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct radeon_device {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct cea_sad {scalar_t__ const format; int channels; int freq; int byte2; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;


 int ARRAY_SIZE (scalar_t__ const**) ;
 int DESCRIPTOR_BYTE_2 (int ) ;
 int MAX_CHANNELS (int) ;
 int SUPPORTED_FREQUENCIES (int ) ;
 int SUPPORTED_FREQUENCIES_STEREO (int ) ;
 int WREG32_ENDPOINT (int ,scalar_t__ const,int) ;

void dce3_2_afmt_write_sad_regs(struct drm_encoder *encoder,
 struct cea_sad *sads, int sad_count)
{
 int i;
 struct radeon_device *rdev = encoder->dev->dev_private;
 static const u16 eld_reg_to_type[][2] = {
  { 151, 129 },
  { 150, 138 },
  { 146, 131 },
  { 145, 132 },
  { 144, 130 },
  { 143, 139 },
  { 142, 136 },
  { 141, 137 },
  { 140, 134 },
  { 149, 135 },
  { 148, 133 },
  { 147, 128 },
 };

 for (i = 0; i < ARRAY_SIZE(eld_reg_to_type); i++) {
  u32 value = 0;
  u8 stereo_freqs = 0;
  int max_channels = -1;
  int j;

  for (j = 0; j < sad_count; j++) {
   struct cea_sad *sad = &sads[j];

   if (sad->format == eld_reg_to_type[i][1]) {
    if (sad->channels > max_channels) {
     value = MAX_CHANNELS(sad->channels) |
      DESCRIPTOR_BYTE_2(sad->byte2) |
      SUPPORTED_FREQUENCIES(sad->freq);
     max_channels = sad->channels;
    }

    if (sad->format == 129)
     stereo_freqs |= sad->freq;
    else
     break;
   }
  }

  value |= SUPPORTED_FREQUENCIES_STEREO(stereo_freqs);

  WREG32_ENDPOINT(0, eld_reg_to_type[i][0], value);
 }
}
