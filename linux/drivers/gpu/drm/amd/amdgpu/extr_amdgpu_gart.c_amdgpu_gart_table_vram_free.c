
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bo; } ;
struct amdgpu_device {TYPE_1__ gart; } ;


 int amdgpu_bo_unref (int **) ;

void amdgpu_gart_table_vram_free(struct amdgpu_device *adev)
{
 if (adev->gart.bo == ((void*)0)) {
  return;
 }
 amdgpu_bo_unref(&adev->gart.bo);
}
