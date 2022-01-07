
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fence_count; scalar_t__ wait_all; int fences; } ;
union drm_amdgpu_wait_fences {TYPE_1__ in; } ;
typedef int uint32_t ;
struct drm_file {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_amdgpu_fence {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int amdgpu_cs_wait_all_fences (struct amdgpu_device*,struct drm_file*,union drm_amdgpu_wait_fences*,struct drm_amdgpu_fence*) ;
 int amdgpu_cs_wait_any_fence (struct amdgpu_device*,struct drm_file*,union drm_amdgpu_wait_fences*,struct drm_amdgpu_fence*) ;
 scalar_t__ copy_from_user (struct drm_amdgpu_fence*,struct drm_amdgpu_fence*,int) ;
 int kfree (struct drm_amdgpu_fence*) ;
 struct drm_amdgpu_fence* kmalloc_array (int,int,int ) ;
 struct drm_amdgpu_fence* u64_to_user_ptr (int ) ;

int amdgpu_cs_wait_fences_ioctl(struct drm_device *dev, void *data,
    struct drm_file *filp)
{
 struct amdgpu_device *adev = dev->dev_private;
 union drm_amdgpu_wait_fences *wait = data;
 uint32_t fence_count = wait->in.fence_count;
 struct drm_amdgpu_fence *fences_user;
 struct drm_amdgpu_fence *fences;
 int r;


 fences = kmalloc_array(fence_count, sizeof(struct drm_amdgpu_fence),
   GFP_KERNEL);
 if (fences == ((void*)0))
  return -ENOMEM;

 fences_user = u64_to_user_ptr(wait->in.fences);
 if (copy_from_user(fences, fences_user,
  sizeof(struct drm_amdgpu_fence) * fence_count)) {
  r = -EFAULT;
  goto err_free_fences;
 }

 if (wait->in.wait_all)
  r = amdgpu_cs_wait_all_fences(adev, filp, wait, fences);
 else
  r = amdgpu_cs_wait_any_fence(adev, filp, wait, fences);

err_free_fences:
 kfree(fences);

 return r;
}
