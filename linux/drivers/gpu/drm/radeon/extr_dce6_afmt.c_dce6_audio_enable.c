
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct radeon_device {int dummy; } ;
struct r600_audio_pin {int offset; } ;


 int AUDIO_ENABLED ;
 int AZ_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL ;
 int WREG32_ENDPOINT (int ,int ,int ) ;

void dce6_audio_enable(struct radeon_device *rdev,
         struct r600_audio_pin *pin,
         u8 enable_mask)
{
 if (!pin)
  return;

 WREG32_ENDPOINT(pin->offset, AZ_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
   enable_mask ? AUDIO_ENABLED : 0);
}
