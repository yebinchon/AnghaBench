
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_cs_parser {scalar_t__ filp; TYPE_2__* adev; } ;
struct TYPE_3__ {scalar_t__* filp; scalar_t__* img_size; int * handles; } ;
struct TYPE_4__ {TYPE_1__ vce; } ;


 unsigned int AMDGPU_MAX_VCE_HANDLES ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int atomic_cmpxchg (int *,int ,int) ;
 int atomic_read (int *) ;

__attribute__((used)) static int amdgpu_vce_validate_handle(struct amdgpu_cs_parser *p,
          uint32_t handle, uint32_t *allocated)
{
 unsigned i;


 for (i = 0; i < AMDGPU_MAX_VCE_HANDLES; ++i) {
  if (atomic_read(&p->adev->vce.handles[i]) == handle) {
   if (p->adev->vce.filp[i] != p->filp) {
    DRM_ERROR("VCE handle collision detected!\n");
    return -EINVAL;
   }
   return i;
  }
 }


 for (i = 0; i < AMDGPU_MAX_VCE_HANDLES; ++i) {
  if (!atomic_cmpxchg(&p->adev->vce.handles[i], 0, handle)) {
   p->adev->vce.filp[i] = p->filp;
   p->adev->vce.img_size[i] = 0;
   *allocated |= 1 << i;
   return i;
  }
 }

 DRM_ERROR("No more free VCE handles!\n");
 return -EINVAL;
}
