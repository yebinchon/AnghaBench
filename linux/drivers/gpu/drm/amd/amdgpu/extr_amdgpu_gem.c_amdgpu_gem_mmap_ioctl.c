
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int addr_ptr; } ;
struct TYPE_3__ {int handle; } ;
union drm_amdgpu_gem_mmap {TYPE_2__ out; TYPE_1__ in; } ;
typedef int uint32_t ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int amdgpu_mode_dumb_mmap (struct drm_file*,struct drm_device*,int ,int *) ;
 int memset (union drm_amdgpu_gem_mmap*,int ,int) ;

int amdgpu_gem_mmap_ioctl(struct drm_device *dev, void *data,
     struct drm_file *filp)
{
 union drm_amdgpu_gem_mmap *args = data;
 uint32_t handle = args->in.handle;
 memset(args, 0, sizeof(*args));
 return amdgpu_mode_dumb_mmap(filp, dev, handle, &args->out.addr_ptr);
}
