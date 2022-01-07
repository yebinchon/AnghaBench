
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_2__ {int size; } ;
struct vkms_gem_object {TYPE_1__ gem; int vaddr; } ;
struct drm_framebuffer {int dummy; } ;
struct vkms_composer {struct drm_framebuffer fb; } ;
struct drm_gem_object {int dummy; } ;


 int DRM_ERROR (char*) ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int compose_cursor (struct vkms_composer*,struct vkms_composer*,void*) ;
 int compute_crc (void*,struct vkms_composer*) ;
 struct drm_gem_object* drm_gem_fb_get_obj (struct drm_framebuffer*,int ) ;
 struct vkms_gem_object* drm_gem_to_vkms_gem (struct drm_gem_object*) ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;
 int memcpy (void*,int ,int ) ;

__attribute__((used)) static uint32_t _vkms_get_crc(struct vkms_composer *primary_composer,
         struct vkms_composer *cursor_composer)
{
 struct drm_framebuffer *fb = &primary_composer->fb;
 struct drm_gem_object *gem_obj = drm_gem_fb_get_obj(fb, 0);
 struct vkms_gem_object *vkms_obj = drm_gem_to_vkms_gem(gem_obj);
 void *vaddr_out = kzalloc(vkms_obj->gem.size, GFP_KERNEL);
 u32 crc = 0;

 if (!vaddr_out) {
  DRM_ERROR("Failed to allocate memory for output frame.");
  return 0;
 }

 if (WARN_ON(!vkms_obj->vaddr)) {
  kfree(vaddr_out);
  return crc;
 }

 memcpy(vaddr_out, vkms_obj->vaddr, vkms_obj->gem.size);

 if (cursor_composer)
  compose_cursor(cursor_composer, primary_composer, vaddr_out);

 crc = compute_crc(vaddr_out, primary_composer);

 kfree(vaddr_out);

 return crc;
}
