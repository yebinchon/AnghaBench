
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu_fb_info {struct intel_vgpu_dmabuf_obj* obj; } ;
struct intel_vgpu_dmabuf_obj {struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int dmabuf_lock; } ;
struct TYPE_2__ {int * dma_buf; } ;
struct drm_i915_gem_object {TYPE_1__ base; struct intel_vgpu_fb_info* gvt_info; } ;


 int dmabuf_obj_put (struct intel_vgpu_dmabuf_obj*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void vgpu_gem_release(struct drm_i915_gem_object *gem_obj)
{

 struct intel_vgpu_fb_info *fb_info = gem_obj->gvt_info;
 struct intel_vgpu_dmabuf_obj *obj = fb_info->obj;
 struct intel_vgpu *vgpu = obj->vgpu;

 if (vgpu) {
  mutex_lock(&vgpu->dmabuf_lock);
  gem_obj->base.dma_buf = ((void*)0);
  dmabuf_obj_put(obj);
  mutex_unlock(&vgpu->dmabuf_lock);
 } else {

  gem_obj->base.dma_buf = ((void*)0);
  dmabuf_obj_put(obj);
 }
}
