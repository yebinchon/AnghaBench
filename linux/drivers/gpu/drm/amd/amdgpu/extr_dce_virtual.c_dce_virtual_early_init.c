
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_hpd; int num_dig; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int dce_virtual_set_display_funcs (struct amdgpu_device*) ;
 int dce_virtual_set_irq_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int dce_virtual_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 dce_virtual_set_display_funcs(adev);
 dce_virtual_set_irq_funcs(adev);

 adev->mode_info.num_hpd = 1;
 adev->mode_info.num_dig = 1;
 return 0;
}
