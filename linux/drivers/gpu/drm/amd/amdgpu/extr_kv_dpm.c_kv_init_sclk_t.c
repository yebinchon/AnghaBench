
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kv_power_info {scalar_t__ low_sclk_interrupt_t; } ;
struct amdgpu_device {int dummy; } ;


 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void kv_init_sclk_t(struct amdgpu_device *adev)
{
 struct kv_power_info *pi = kv_get_pi(adev);

 pi->low_sclk_interrupt_t = 0;
}
