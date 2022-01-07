
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pp_handle; TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; } ;
struct TYPE_3__ {int (* asic_reset_mode_2 ) (int ) ;} ;


 int ENOENT ;
 int stub1 (int ) ;

__attribute__((used)) static int soc15_mode2_reset(struct amdgpu_device *adev)
{
 if (!adev->powerplay.pp_funcs ||
     !adev->powerplay.pp_funcs->asic_reset_mode_2)
  return -ENOENT;

 return adev->powerplay.pp_funcs->asic_reset_mode_2(adev->powerplay.pp_handle);
}
