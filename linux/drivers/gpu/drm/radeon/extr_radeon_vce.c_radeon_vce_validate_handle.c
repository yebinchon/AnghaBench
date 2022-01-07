
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_cs_parser {scalar_t__ filp; TYPE_2__* rdev; } ;
struct TYPE_3__ {scalar_t__* filp; scalar_t__* img_size; int * handles; } ;
struct TYPE_4__ {TYPE_1__ vce; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 unsigned int RADEON_MAX_VCE_HANDLES ;
 int atomic_cmpxchg (int *,int ,int ) ;
 int atomic_read (int *) ;

__attribute__((used)) static int radeon_vce_validate_handle(struct radeon_cs_parser *p,
          uint32_t handle, bool *allocated)
{
 unsigned i;

 *allocated = 0;


 for (i = 0; i < RADEON_MAX_VCE_HANDLES; ++i) {
  if (atomic_read(&p->rdev->vce.handles[i]) == handle) {
   if (p->rdev->vce.filp[i] != p->filp) {
    DRM_ERROR("VCE handle collision detected!\n");
    return -EINVAL;
   }
   return i;
  }
 }


 for (i = 0; i < RADEON_MAX_VCE_HANDLES; ++i) {
  if (!atomic_cmpxchg(&p->rdev->vce.handles[i], 0, handle)) {
   p->rdev->vce.filp[i] = p->filp;
   p->rdev->vce.img_size[i] = 0;
   *allocated = 1;
   return i;
  }
 }

 DRM_ERROR("No more free VCE handles!\n");
 return -EINVAL;
}
