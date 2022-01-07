
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_buffer_object {int mem; int ttm; int bdev; } ;
struct amdgpu_device {int dummy; } ;


 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int amdgpu_ttm_gart_bind (struct amdgpu_device*,struct ttm_buffer_object*,int ) ;
 int amdgpu_ttm_tt_pte_flags (struct amdgpu_device*,int ,int *) ;

int amdgpu_ttm_recover_gart(struct ttm_buffer_object *tbo)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(tbo->bdev);
 uint64_t flags;
 int r;

 if (!tbo->ttm)
  return 0;

 flags = amdgpu_ttm_tt_pte_flags(adev, tbo->ttm, &tbo->mem);
 r = amdgpu_ttm_gart_bind(adev, tbo, flags);

 return r;
}
