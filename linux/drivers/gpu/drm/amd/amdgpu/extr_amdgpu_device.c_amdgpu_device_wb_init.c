
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int num_wb; char used; scalar_t__ wb; int gpu_addr; int * wb_obj; } ;
struct amdgpu_device {TYPE_1__ wb; int dev; } ;


 int AMDGPU_GEM_DOMAIN_GTT ;
 int AMDGPU_MAX_WB ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,int,int ,int ,int **,int *,void**) ;
 int dev_warn (int ,char*,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int amdgpu_device_wb_init(struct amdgpu_device *adev)
{
 int r;

 if (adev->wb.wb_obj == ((void*)0)) {

  r = amdgpu_bo_create_kernel(adev, AMDGPU_MAX_WB * sizeof(uint32_t) * 8,
         PAGE_SIZE, AMDGPU_GEM_DOMAIN_GTT,
         &adev->wb.wb_obj, &adev->wb.gpu_addr,
         (void **)&adev->wb.wb);
  if (r) {
   dev_warn(adev->dev, "(%d) create WB bo failed\n", r);
   return r;
  }

  adev->wb.num_wb = AMDGPU_MAX_WB;
  memset(&adev->wb.used, 0, sizeof(adev->wb.used));


  memset((char *)adev->wb.wb, 0, AMDGPU_MAX_WB * sizeof(uint32_t) * 8);
 }

 return 0;
}
