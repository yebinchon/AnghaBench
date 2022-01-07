
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * wb_obj; int wb; int gpu_addr; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int amdgpu_bo_free_kernel (int **,int *,void**) ;

__attribute__((used)) static void amdgpu_device_wb_fini(struct amdgpu_device *adev)
{
 if (adev->wb.wb_obj) {
  amdgpu_bo_free_kernel(&adev->wb.wb_obj,
          &adev->wb.gpu_addr,
          (void **)&adev->wb.wb);
  adev->wb.wb_obj = ((void*)0);
 }
}
