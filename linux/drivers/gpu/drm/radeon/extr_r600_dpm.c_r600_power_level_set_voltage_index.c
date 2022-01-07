
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
typedef enum r600_power_level { ____Placeholder_r600_power_level } r600_power_level ;


 int CTXSW_FREQ_VIDS_CFG_INDEX (int) ;
 int CTXSW_FREQ_VIDS_CFG_INDEX_MASK ;
 scalar_t__ CTXSW_PROFILE_INDEX ;
 int WREG32_P (scalar_t__,int ,int ) ;

void r600_power_level_set_voltage_index(struct radeon_device *rdev,
     enum r600_power_level index, u32 voltage_index)
{
 u32 ix = 3 - (3 & index);

 WREG32_P(CTXSW_PROFILE_INDEX + (ix * 4),
   CTXSW_FREQ_VIDS_CFG_INDEX(voltage_index), ~CTXSW_FREQ_VIDS_CFG_INDEX_MASK);
}
