
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kv_power_info {int graphics_interval; int sram_end; scalar_t__ dpm_table_start; } ;
struct amdgpu_device {int dummy; } ;


 int GraphicsInterval ;
 int SMU7_Fusion_DpmTable ;
 int amdgpu_kv_copy_bytes_to_smc (struct amdgpu_device*,scalar_t__,int*,int,int ) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_set_dpm_interval(struct amdgpu_device *adev)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 int ret;

 pi->graphics_interval = 1;

 ret = amdgpu_kv_copy_bytes_to_smc(adev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, GraphicsInterval),
       &pi->graphics_interval,
       sizeof(u8), pi->sram_end);

 return ret;
}
