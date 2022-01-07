
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct kgd_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;
struct TYPE_3__ {int (* get_gpu_clock_counter ) (struct amdgpu_device*) ;} ;


 int stub1 (struct amdgpu_device*) ;

uint64_t amdgpu_amdkfd_get_gpu_clock_counter(struct kgd_dev *kgd)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;

 if (adev->gfx.funcs->get_gpu_clock_counter)
  return adev->gfx.funcs->get_gpu_clock_counter(adev);
 return 0;
}
