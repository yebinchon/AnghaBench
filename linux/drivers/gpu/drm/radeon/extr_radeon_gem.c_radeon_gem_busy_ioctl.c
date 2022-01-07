
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int mem_type; } ;
struct TYPE_4__ {int resv; } ;
struct TYPE_6__ {TYPE_2__ mem; TYPE_1__ base; } ;
struct radeon_bo {TYPE_3__ tbo; } ;
struct drm_radeon_gem_busy {int domain; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EBUSY ;
 int ENOENT ;
 int READ_ONCE (int ) ;
 int dma_resv_test_signaled_rcu (int ,int) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_mem_type_to_domain (int ) ;

int radeon_gem_busy_ioctl(struct drm_device *dev, void *data,
     struct drm_file *filp)
{
 struct drm_radeon_gem_busy *args = data;
 struct drm_gem_object *gobj;
 struct radeon_bo *robj;
 int r;
 uint32_t cur_placement = 0;

 gobj = drm_gem_object_lookup(filp, args->handle);
 if (gobj == ((void*)0)) {
  return -ENOENT;
 }
 robj = gem_to_radeon_bo(gobj);

 r = dma_resv_test_signaled_rcu(robj->tbo.base.resv, 1);
 if (r == 0)
  r = -EBUSY;
 else
  r = 0;

 cur_placement = READ_ONCE(robj->tbo.mem.mem_type);
 args->domain = radeon_mem_type_to_domain(cur_placement);
 drm_gem_object_put_unlocked(gobj);
 return r;
}
