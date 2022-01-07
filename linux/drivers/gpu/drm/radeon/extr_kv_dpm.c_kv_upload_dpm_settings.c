
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {int sram_end; int graphics_dpm_level_count; scalar_t__ dpm_table_start; int graphics_level; } ;
typedef int SMU7_Fusion_GraphicsLevel ;


 int GraphicsDpmLevelCount ;
 int GraphicsLevel ;
 int SMU7_Fusion_DpmTable ;
 int SMU7_MAX_LEVELS_GRAPHICS ;
 int kv_copy_bytes_to_smc (struct radeon_device*,scalar_t__,int *,int,int ) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_upload_dpm_settings(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 int ret;

 ret = kv_copy_bytes_to_smc(rdev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, GraphicsLevel),
       (u8 *)&pi->graphics_level,
       sizeof(SMU7_Fusion_GraphicsLevel) * SMU7_MAX_LEVELS_GRAPHICS,
       pi->sram_end);

 if (ret)
  return ret;

 ret = kv_copy_bytes_to_smc(rdev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, GraphicsDpmLevelCount),
       &pi->graphics_dpm_level_count,
       sizeof(u8), pi->sram_end);

 return ret;
}
