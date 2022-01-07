
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int mmDC_GPIO_HPD_A ;

__attribute__((used)) static u32 dce_v10_0_hpd_get_gpio_reg(struct amdgpu_device *adev)
{
 return mmDC_GPIO_HPD_A;
}
