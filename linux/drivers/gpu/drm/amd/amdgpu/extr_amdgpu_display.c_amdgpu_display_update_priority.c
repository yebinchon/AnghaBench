
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disp_priority; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int amdgpu_disp_priority ;

void amdgpu_display_update_priority(struct amdgpu_device *adev)
{

 if ((amdgpu_disp_priority == 0) || (amdgpu_disp_priority > 2))
  adev->mode_info.disp_priority = 0;
 else
  adev->mode_info.disp_priority = amdgpu_disp_priority;

}
