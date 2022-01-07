
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * funcs; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int dce_v11_0_display_funcs ;

__attribute__((used)) static void dce_v11_0_set_display_funcs(struct amdgpu_device *adev)
{
 adev->mode_info.funcs = &dce_v11_0_display_funcs;
}
