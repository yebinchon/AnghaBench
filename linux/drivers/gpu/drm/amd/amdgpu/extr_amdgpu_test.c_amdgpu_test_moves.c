
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ buffer_funcs; } ;
struct amdgpu_device {TYPE_1__ mman; } ;


 int amdgpu_do_test_moves (struct amdgpu_device*) ;

void amdgpu_test_moves(struct amdgpu_device *adev)
{
 if (adev->mman.buffer_funcs)
  amdgpu_do_test_moves(adev);
}
