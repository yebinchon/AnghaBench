
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_device_gfx_plane_info {int y_hot; int x_hot; int y_pos; int x_pos; int size; int stride; int height; int width; int drm_format_mod; int drm_format; } ;
struct intel_vgpu_fb_info {int y_hot; int x_hot; int y_pos; int x_pos; int size; int stride; int height; int width; int drm_format_mod; int drm_format; } ;



__attribute__((used)) static void update_fb_info(struct vfio_device_gfx_plane_info *gvt_dmabuf,
        struct intel_vgpu_fb_info *fb_info)
{
 gvt_dmabuf->drm_format = fb_info->drm_format;
 gvt_dmabuf->drm_format_mod = fb_info->drm_format_mod;
 gvt_dmabuf->width = fb_info->width;
 gvt_dmabuf->height = fb_info->height;
 gvt_dmabuf->stride = fb_info->stride;
 gvt_dmabuf->size = fb_info->size;
 gvt_dmabuf->x_pos = fb_info->x_pos;
 gvt_dmabuf->y_pos = fb_info->y_pos;
 gvt_dmabuf->x_hot = fb_info->x_hot;
 gvt_dmabuf->y_hot = fb_info->y_hot;
}
