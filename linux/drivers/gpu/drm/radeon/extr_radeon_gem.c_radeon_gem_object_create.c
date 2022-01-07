
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int mutex; int objects; } ;
struct TYPE_4__ {unsigned long gtt_size; } ;
struct radeon_device {unsigned long gart_pin_size; TYPE_3__ gem; TYPE_1__ mc; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_5__ {struct drm_gem_object base; } ;
struct radeon_bo {int list; int pid; TYPE_2__ tbo; } ;


 int DRM_DEBUG (char*,unsigned long,unsigned long) ;
 int DRM_ERROR (char*,unsigned long,int,int,int) ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int PAGE_SIZE ;
 int RADEON_GEM_DOMAIN_GTT ;
 int RADEON_GEM_DOMAIN_VRAM ;
 int current ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_bo_create (struct radeon_device*,unsigned long,int,int,int,int ,int *,int *,struct radeon_bo**) ;
 int task_pid_nr (int ) ;

int radeon_gem_object_create(struct radeon_device *rdev, unsigned long size,
    int alignment, int initial_domain,
    u32 flags, bool kernel,
    struct drm_gem_object **obj)
{
 struct radeon_bo *robj;
 unsigned long max_size;
 int r;

 *obj = ((void*)0);

 if (alignment < PAGE_SIZE) {
  alignment = PAGE_SIZE;
 }




 max_size = rdev->mc.gtt_size - rdev->gart_pin_size;
 if (size > max_size) {
  DRM_DEBUG("Allocation size %ldMb bigger than %ldMb limit\n",
     size >> 20, max_size >> 20);
  return -ENOMEM;
 }

retry:
 r = radeon_bo_create(rdev, size, alignment, kernel, initial_domain,
        flags, ((void*)0), ((void*)0), &robj);
 if (r) {
  if (r != -ERESTARTSYS) {
   if (initial_domain == RADEON_GEM_DOMAIN_VRAM) {
    initial_domain |= RADEON_GEM_DOMAIN_GTT;
    goto retry;
   }
   DRM_ERROR("Failed to allocate GEM object (%ld, %d, %u, %d)\n",
      size, initial_domain, alignment, r);
  }
  return r;
 }
 *obj = &robj->tbo.base;
 robj->pid = task_pid_nr(current);

 mutex_lock(&rdev->gem.mutex);
 list_add_tail(&robj->list, &rdev->gem.objects);
 mutex_unlock(&rdev->gem.mutex);

 return 0;
}
