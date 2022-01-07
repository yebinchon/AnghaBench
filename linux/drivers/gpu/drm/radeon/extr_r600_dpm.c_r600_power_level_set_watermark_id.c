
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
typedef enum r600_power_level { ____Placeholder_r600_power_level } r600_power_level ;
typedef enum r600_display_watermark { ____Placeholder_r600_display_watermark } r600_display_watermark ;


 int CTXSW_FREQ_DISPLAY_WATERMARK ;
 scalar_t__ CTXSW_PROFILE_INDEX ;
 int R600_DISPLAY_WATERMARK_HIGH ;
 int WREG32_P (scalar_t__,int,int) ;

void r600_power_level_set_watermark_id(struct radeon_device *rdev,
           enum r600_power_level index,
           enum r600_display_watermark watermark_id)
{
 u32 ix = 3 - (3 & index);
 u32 tmp = 0;

 if (watermark_id == R600_DISPLAY_WATERMARK_HIGH)
  tmp = CTXSW_FREQ_DISPLAY_WATERMARK;
 WREG32_P(CTXSW_PROFILE_INDEX + (ix * 4), tmp, ~CTXSW_FREQ_DISPLAY_WATERMARK);
}
