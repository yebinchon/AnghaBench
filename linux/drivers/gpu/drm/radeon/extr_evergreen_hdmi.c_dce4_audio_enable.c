
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct radeon_device {int dummy; } ;
struct r600_audio_pin {int dummy; } ;


 int AUDIO_ENABLED ;
 int AZ_HOT_PLUG_CONTROL ;
 int PIN0_AUDIO_ENABLED ;
 int PIN1_AUDIO_ENABLED ;
 int PIN2_AUDIO_ENABLED ;
 int PIN3_AUDIO_ENABLED ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

void dce4_audio_enable(struct radeon_device *rdev,
         struct r600_audio_pin *pin,
         u8 enable_mask)
{
 u32 tmp = RREG32(AZ_HOT_PLUG_CONTROL);

 if (!pin)
  return;

 if (enable_mask) {
  tmp |= AUDIO_ENABLED;
  if (enable_mask & 1)
   tmp |= PIN0_AUDIO_ENABLED;
  if (enable_mask & 2)
   tmp |= PIN1_AUDIO_ENABLED;
  if (enable_mask & 4)
   tmp |= PIN2_AUDIO_ENABLED;
  if (enable_mask & 8)
   tmp |= PIN3_AUDIO_ENABLED;
 } else {
  tmp &= ~(AUDIO_ENABLED |
    PIN0_AUDIO_ENABLED |
    PIN1_AUDIO_ENABLED |
    PIN2_AUDIO_ENABLED |
    PIN3_AUDIO_ENABLED);
 }

 WREG32(AZ_HOT_PLUG_CONTROL, tmp);
}
