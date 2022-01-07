
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {int vid_mapping_table; } ;
struct trinity_power_info {TYPE_1__ sys_info; } ;
struct radeon_device {int dummy; } ;


 int PM_CONFIG ;
 int RREG32_SMC (int ) ;
 int SVI_Mode ;
 scalar_t__ sumo_convert_vid2_to_vid7 (struct radeon_device*,int *,scalar_t__) ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;

__attribute__((used)) static u16 trinity_convert_voltage_index_to_value(struct radeon_device *rdev,
        u32 vid_2bit)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);
 u32 vid_7bit = sumo_convert_vid2_to_vid7(rdev, &pi->sys_info.vid_mapping_table, vid_2bit);
 u32 svi_mode = (RREG32_SMC(PM_CONFIG) & SVI_Mode) ? 1 : 0;
 u32 step = (svi_mode == 0) ? 1250 : 625;
 u32 delta = vid_7bit * step + 50;

 if (delta > 155000)
  return 0;

 return (155000 - delta) / 100;
}
