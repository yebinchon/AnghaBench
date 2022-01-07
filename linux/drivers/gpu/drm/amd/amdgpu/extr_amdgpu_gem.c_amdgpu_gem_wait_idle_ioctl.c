
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int status; } ;
struct TYPE_8__ {int timeout; int handle; } ;
union drm_amdgpu_gem_wait_idle {TYPE_3__ out; TYPE_4__ in; } ;
typedef int uint32_t ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_5__ {int resv; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;


 int ENOENT ;
 unsigned long amdgpu_gem_timeout (int ) ;
 long dma_resv_wait_timeout_rcu (int ,int,int,unsigned long) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;
 int memset (union drm_amdgpu_gem_wait_idle*,int ,int) ;

int amdgpu_gem_wait_idle_ioctl(struct drm_device *dev, void *data,
         struct drm_file *filp)
{
 union drm_amdgpu_gem_wait_idle *args = data;
 struct drm_gem_object *gobj;
 struct amdgpu_bo *robj;
 uint32_t handle = args->in.handle;
 unsigned long timeout = amdgpu_gem_timeout(args->in.timeout);
 int r = 0;
 long ret;

 gobj = drm_gem_object_lookup(filp, handle);
 if (gobj == ((void*)0)) {
  return -ENOENT;
 }
 robj = gem_to_amdgpu_bo(gobj);
 ret = dma_resv_wait_timeout_rcu(robj->tbo.base.resv, 1, 1,
        timeout);





 if (ret >= 0) {
  memset(args, 0, sizeof(*args));
  args->out.status = (ret == 0);
 } else
  r = ret;

 drm_gem_object_put_unlocked(gobj);
 return r;
}
