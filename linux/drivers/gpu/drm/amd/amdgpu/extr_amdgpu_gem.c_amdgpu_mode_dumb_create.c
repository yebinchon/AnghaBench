
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u64 ;
typedef int u32 ;
struct drm_mode_create_dumb {int size; int height; int handle; scalar_t__ pitch; int bpp; int width; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct TYPE_2__ {scalar_t__ buffer_funcs_enabled; } ;
struct amdgpu_device {TYPE_1__ mman; } ;


 int ALIGN (int,int ) ;
 int AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED ;
 int AMDGPU_GEM_CREATE_CPU_GTT_USWC ;
 int AMDGPU_GEM_CREATE_VRAM_CLEARED ;
 int DIV_ROUND_UP (int ,int) ;
 int ENOMEM ;
 int PAGE_SIZE ;
 scalar_t__ amdgpu_align_pitch (struct amdgpu_device*,int ,int ,int ) ;
 int amdgpu_bo_get_preferred_pin_domain (struct amdgpu_device*,int ) ;
 int amdgpu_display_supported_domains (struct amdgpu_device*,int) ;
 int amdgpu_gem_object_create (struct amdgpu_device*,int,int ,int ,int,int ,int *,struct drm_gem_object**) ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int ttm_bo_type_device ;

int amdgpu_mode_dumb_create(struct drm_file *file_priv,
       struct drm_device *dev,
       struct drm_mode_create_dumb *args)
{
 struct amdgpu_device *adev = dev->dev_private;
 struct drm_gem_object *gobj;
 uint32_t handle;
 u64 flags = AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED |
      AMDGPU_GEM_CREATE_CPU_GTT_USWC;
 u32 domain;
 int r;






 if (adev->mman.buffer_funcs_enabled)
  flags |= AMDGPU_GEM_CREATE_VRAM_CLEARED;

 args->pitch = amdgpu_align_pitch(adev, args->width,
      DIV_ROUND_UP(args->bpp, 8), 0);
 args->size = (u64)args->pitch * args->height;
 args->size = ALIGN(args->size, PAGE_SIZE);
 domain = amdgpu_bo_get_preferred_pin_domain(adev,
    amdgpu_display_supported_domains(adev, flags));
 r = amdgpu_gem_object_create(adev, args->size, 0, domain, flags,
         ttm_bo_type_device, ((void*)0), &gobj);
 if (r)
  return -ENOMEM;

 r = drm_gem_handle_create(file_priv, gobj, &handle);

 drm_gem_object_put_unlocked(gobj);
 if (r) {
  return r;
 }
 args->handle = handle;
 return 0;
}
