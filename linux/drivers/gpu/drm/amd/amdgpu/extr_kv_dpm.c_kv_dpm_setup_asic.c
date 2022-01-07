
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int kv_init_powergate_state (struct amdgpu_device*) ;
 int kv_init_sclk_t (struct amdgpu_device*) ;
 int sumo_take_smu_control (struct amdgpu_device*,int) ;

__attribute__((used)) static void kv_dpm_setup_asic(struct amdgpu_device *adev)
{
 sumo_take_smu_control(adev, 1);
 kv_init_powergate_state(adev);
 kv_init_sclk_t(adev);
}
