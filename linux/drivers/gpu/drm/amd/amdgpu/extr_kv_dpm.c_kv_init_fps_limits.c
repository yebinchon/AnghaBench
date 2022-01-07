
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct kv_power_info {int sram_end; void* fps_low_t; scalar_t__ dpm_table_start; void* fps_high_t; scalar_t__ caps_fps; } ;
struct amdgpu_device {int dummy; } ;


 int FpsHighT ;
 int FpsLowT ;
 int SMU7_Fusion_DpmTable ;
 int amdgpu_kv_copy_bytes_to_smc (struct amdgpu_device*,scalar_t__,int *,int,int ) ;
 void* cpu_to_be16 (int) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_init_fps_limits(struct amdgpu_device *adev)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 int ret = 0;

 if (pi->caps_fps) {
  u16 tmp;

  tmp = 45;
  pi->fps_high_t = cpu_to_be16(tmp);
  ret = amdgpu_kv_copy_bytes_to_smc(adev,
        pi->dpm_table_start +
        offsetof(SMU7_Fusion_DpmTable, FpsHighT),
        (u8 *)&pi->fps_high_t,
        sizeof(u16), pi->sram_end);

  tmp = 30;
  pi->fps_low_t = cpu_to_be16(tmp);

  ret = amdgpu_kv_copy_bytes_to_smc(adev,
        pi->dpm_table_start +
        offsetof(SMU7_Fusion_DpmTable, FpsLowT),
        (u8 *)&pi->fps_low_t,
        sizeof(u16), pi->sram_end);

 }
 return ret;
}
