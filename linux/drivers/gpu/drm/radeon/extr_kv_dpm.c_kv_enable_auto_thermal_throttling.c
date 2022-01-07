
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {int graphics_therm_throttle_enable; int sram_end; scalar_t__ dpm_table_start; } ;


 int GraphicsThermThrottleEnable ;
 int SMU7_Fusion_DpmTable ;
 int kv_copy_bytes_to_smc (struct radeon_device*,scalar_t__,int*,int,int ) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_enable_auto_thermal_throttling(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 int ret;

 pi->graphics_therm_throttle_enable = 1;

 ret = kv_copy_bytes_to_smc(rdev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, GraphicsThermThrottleEnable),
       &pi->graphics_therm_throttle_enable,
       sizeof(u8), pi->sram_end);

 return ret;
}
