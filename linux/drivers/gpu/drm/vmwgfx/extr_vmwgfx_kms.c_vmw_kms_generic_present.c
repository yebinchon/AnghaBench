
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_surface {int res; } ;
struct vmw_private {int dummy; } ;
struct vmw_framebuffer {int dummy; } ;
struct drm_vmw_rect {int dummy; } ;
struct drm_file {int dummy; } ;
typedef int int32_t ;


 int vmw_kms_sou_do_surface_dirty (struct vmw_private*,struct vmw_framebuffer*,int *,struct drm_vmw_rect*,int *,int ,int ,int ,int,int *,int *) ;

__attribute__((used)) static int vmw_kms_generic_present(struct vmw_private *dev_priv,
       struct drm_file *file_priv,
       struct vmw_framebuffer *vfb,
       struct vmw_surface *surface,
       uint32_t sid,
       int32_t destX, int32_t destY,
       struct drm_vmw_rect *clips,
       uint32_t num_clips)
{
 return vmw_kms_sou_do_surface_dirty(dev_priv, vfb, ((void*)0), clips,
         &surface->res, destX, destY,
         num_clips, 1, ((void*)0), ((void*)0));
}
