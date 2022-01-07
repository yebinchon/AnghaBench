
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ width; scalar_t__ height; } ;
struct vmw_surface {scalar_t__ format; int* mip_levels; int quality_level; int multisample_pattern; scalar_t__ multisample_count; scalar_t__ flags; TYPE_1__ base_size; } ;
struct vmw_private {int capabilities; } ;
struct vmw_plane_state {scalar_t__ pinned; int content_fb_type; int cpp; TYPE_3__* surf; } ;
struct vmw_framebuffer_surface {struct vmw_surface* surface; } ;
struct vmw_framebuffer {scalar_t__ bo; } ;
struct drm_vmw_size {scalar_t__ width; scalar_t__ height; int depth; int member_0; } ;
struct drm_plane_state {scalar_t__ crtc_w; scalar_t__ crtc_h; struct drm_crtc* crtc; struct drm_framebuffer* fb; } ;
struct drm_plane {int dev; } ;
struct drm_framebuffer {int* pitches; int width; TYPE_2__* format; } ;
struct drm_crtc {int dev; } ;
typedef enum stdu_content_type { ____Placeholder_stdu_content_type } stdu_content_type ;
struct TYPE_8__ {scalar_t__ format; int res; struct drm_vmw_size base_size; } ;
struct TYPE_7__ {int* cpp; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int SAME_AS_DISPLAY ;
 int SEPARATE_BO ;
 int SEPARATE_SURFACE ;
 int SVGA3D_MS_PATTERN_NONE ;
 int SVGA3D_MS_QUALITY_NONE ;
 scalar_t__ SVGA3D_P8 ;
 scalar_t__ SVGA3D_R5G6B5 ;
 scalar_t__ SVGA3D_X8R8G8B8 ;
 int SVGA_CAP_3D ;
 int WARN_ON (int) ;
 struct vmw_framebuffer* vmw_framebuffer_to_vfb (struct drm_framebuffer*) ;
 struct vmw_framebuffer_surface* vmw_framebuffer_to_vfbs (struct drm_framebuffer*) ;
 struct vmw_plane_state* vmw_plane_state_to_vps (struct drm_plane_state*) ;
 struct vmw_private* vmw_priv (int ) ;
 int vmw_resource_pin (int *,int) ;
 int vmw_surface_gb_priv_define (int ,int ,scalar_t__,scalar_t__,int,int,scalar_t__,int ,struct drm_vmw_size,int ,int ,TYPE_3__**) ;
 TYPE_3__* vmw_surface_reference (struct vmw_surface*) ;
 int vmw_surface_unreference (TYPE_3__**) ;

__attribute__((used)) static int
vmw_stdu_primary_plane_prepare_fb(struct drm_plane *plane,
      struct drm_plane_state *new_state)
{
 struct vmw_private *dev_priv = vmw_priv(plane->dev);
 struct drm_framebuffer *new_fb = new_state->fb;
 struct vmw_framebuffer *vfb;
 struct vmw_plane_state *vps = vmw_plane_state_to_vps(new_state);
 enum stdu_content_type new_content_type;
 struct vmw_framebuffer_surface *new_vfbs;
 struct drm_crtc *crtc = new_state->crtc;
 uint32_t hdisplay = new_state->crtc_w, vdisplay = new_state->crtc_h;
 int ret;


 if (!new_fb) {
  if (vps->surf) {
   WARN_ON(vps->pinned != 0);
   vmw_surface_unreference(&vps->surf);
  }

  return 0;
 }

 vfb = vmw_framebuffer_to_vfb(new_fb);
 new_vfbs = (vfb->bo) ? ((void*)0) : vmw_framebuffer_to_vfbs(new_fb);

 if (new_vfbs && new_vfbs->surface->base_size.width == hdisplay &&
     new_vfbs->surface->base_size.height == vdisplay)
  new_content_type = SAME_AS_DISPLAY;
 else if (vfb->bo)
  new_content_type = SEPARATE_BO;
 else
  new_content_type = SEPARATE_SURFACE;

 if (new_content_type != SAME_AS_DISPLAY) {
  struct vmw_surface content_srf;
  struct drm_vmw_size display_base_size = {0};

  display_base_size.width = hdisplay;
  display_base_size.height = vdisplay;
  display_base_size.depth = 1;





  if (new_content_type == SEPARATE_BO) {

   switch (new_fb->format->cpp[0]*8) {
   case 32:
    content_srf.format = SVGA3D_X8R8G8B8;
    break;

   case 16:
    content_srf.format = SVGA3D_R5G6B5;
    break;

   case 8:
    content_srf.format = SVGA3D_P8;
    break;

   default:
    DRM_ERROR("Invalid format\n");
    return -EINVAL;
   }

   content_srf.flags = 0;
   content_srf.mip_levels[0] = 1;
   content_srf.multisample_count = 0;
   content_srf.multisample_pattern =
    SVGA3D_MS_PATTERN_NONE;
   content_srf.quality_level = SVGA3D_MS_QUALITY_NONE;
  } else {
   content_srf = *new_vfbs->surface;
  }

  if (vps->surf) {
   struct drm_vmw_size cur_base_size = vps->surf->base_size;

   if (cur_base_size.width != display_base_size.width ||
       cur_base_size.height != display_base_size.height ||
       vps->surf->format != content_srf.format) {
    WARN_ON(vps->pinned != 0);
    vmw_surface_unreference(&vps->surf);
   }

  }

  if (!vps->surf) {
   ret = vmw_surface_gb_priv_define
    (crtc->dev,

     0,
     content_srf.flags,
     content_srf.format,
     1,
     content_srf.mip_levels[0],
     content_srf.multisample_count,
     0,
     display_base_size,
     content_srf.multisample_pattern,
     content_srf.quality_level,
     &vps->surf);
   if (ret != 0) {
    DRM_ERROR("Couldn't allocate STDU surface.\n");
    return ret;
   }
  }
 } else {






  if (vps->surf) {
   WARN_ON(vps->pinned != 0);
   vmw_surface_unreference(&vps->surf);
  }

  vps->surf = vmw_surface_reference(new_vfbs->surface);
 }

 if (vps->surf) {


  ret = vmw_resource_pin(&vps->surf->res, 0);
  if (ret)
   goto out_srf_unref;

  vps->pinned++;
 }

 vps->content_fb_type = new_content_type;







 if (vps->content_fb_type == SEPARATE_BO &&
     !(dev_priv->capabilities & SVGA_CAP_3D))
  vps->cpp = new_fb->pitches[0] / new_fb->width;

 return 0;

out_srf_unref:
 vmw_surface_unreference(&vps->surf);
 return ret;
}
