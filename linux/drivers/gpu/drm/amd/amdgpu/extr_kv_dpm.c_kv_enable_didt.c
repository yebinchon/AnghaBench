
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kv_power_info {scalar_t__ caps_tcp_ramping; scalar_t__ caps_td_ramping; scalar_t__ caps_db_ramping; scalar_t__ caps_sq_ramping; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_gfx_rlc_enter_safe_mode (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_exit_safe_mode (struct amdgpu_device*) ;
 int didt_config_kv ;
 int kv_do_enable_didt (struct amdgpu_device*,int) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 int kv_program_pt_config_registers (struct amdgpu_device*,int ) ;

__attribute__((used)) static int kv_enable_didt(struct amdgpu_device *adev, bool enable)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 int ret;

 if (pi->caps_sq_ramping ||
     pi->caps_db_ramping ||
     pi->caps_td_ramping ||
     pi->caps_tcp_ramping) {
  amdgpu_gfx_rlc_enter_safe_mode(adev);

  if (enable) {
   ret = kv_program_pt_config_registers(adev, didt_config_kv);
   if (ret) {
    amdgpu_gfx_rlc_exit_safe_mode(adev);
    return ret;
   }
  }

  kv_do_enable_didt(adev, enable);

  amdgpu_gfx_rlc_exit_safe_mode(adev);
 }

 return 0;
}
