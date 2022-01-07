
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int va; int reserved_bo; } ;
struct amdgpu_device {TYPE_1__ fw_vram_usage; } ;


 int amdgpu_bo_free_kernel (int *,int *,int *) ;

__attribute__((used)) static void amdgpu_ttm_fw_reserve_vram_fini(struct amdgpu_device *adev)
{
 amdgpu_bo_free_kernel(&adev->fw_vram_usage.reserved_bo,
  ((void*)0), &adev->fw_vram_usage.va);
}
