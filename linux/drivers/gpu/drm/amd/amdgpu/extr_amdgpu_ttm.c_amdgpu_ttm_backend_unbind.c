
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_tt {int num_pages; int bdev; } ;
struct TYPE_3__ {int num_pages; } ;
struct TYPE_4__ {TYPE_1__ ttm; } ;
struct amdgpu_ttm_tt {scalar_t__ offset; TYPE_2__ ttm; scalar_t__ userptr; } ;
struct amdgpu_device {int dummy; } ;


 scalar_t__ AMDGPU_BO_INVALID_OFFSET ;
 int DRM_ERROR (char*,int ,scalar_t__) ;
 int amdgpu_gart_unbind (struct amdgpu_device*,scalar_t__,int ) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int amdgpu_ttm_tt_unpin_userptr (struct ttm_tt*) ;

__attribute__((used)) static int amdgpu_ttm_backend_unbind(struct ttm_tt *ttm)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(ttm->bdev);
 struct amdgpu_ttm_tt *gtt = (void *)ttm;
 int r;


 if (gtt->userptr)
  amdgpu_ttm_tt_unpin_userptr(ttm);

 if (gtt->offset == AMDGPU_BO_INVALID_OFFSET)
  return 0;


 r = amdgpu_gart_unbind(adev, gtt->offset, ttm->num_pages);
 if (r)
  DRM_ERROR("failed to unbind %lu pages at 0x%08llX\n",
     gtt->ttm.ttm.num_pages, gtt->offset);
 return r;
}
