
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_primary_plane_format {int base; int width; int stride; int tiled; int drm_format; int height; int base_gpa; } ;
struct intel_vgpu_fb_info {int start; int width; int stride; int size; int height; void* y_hot; void* x_hot; int y_pos; int x_pos; scalar_t__ drm_format_mod; int drm_format; int start_gpa; } ;
struct intel_vgpu_cursor_plane_format {int base; int width; int bpp; void* y_hot; void* x_hot; int y_pos; int x_pos; int drm_format; int height; int base_gpa; } ;
struct intel_vgpu {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ DRM_FORMAT_MOD_LINEAR ;
 int DRM_PLANE_TYPE_CURSOR ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int EFAULT ;
 int EINVAL ;
 scalar_t__ I915_FORMAT_MOD_X_TILED ;
 scalar_t__ I915_FORMAT_MOD_Y_TILED ;
 scalar_t__ I915_FORMAT_MOD_Yf_TILED ;
 int PAGE_SIZE ;




 void* UINT_MAX ;
 int gvt_vgpu_err (char*,...) ;
 int intel_gvt_ggtt_validate_range (struct intel_vgpu*,int,int) ;
 int intel_vgpu_decode_cursor_plane (struct intel_vgpu*,struct intel_vgpu_cursor_plane_format*) ;
 int intel_vgpu_decode_primary_plane (struct intel_vgpu*,struct intel_vgpu_primary_plane_format*) ;
 int memset (struct intel_vgpu_fb_info*,int ,int) ;
 int roundup (int ,int) ;
 scalar_t__ validate_hotspot (struct intel_vgpu_cursor_plane_format*) ;

__attribute__((used)) static int vgpu_get_plane_info(struct drm_device *dev,
  struct intel_vgpu *vgpu,
  struct intel_vgpu_fb_info *info,
  int plane_id)
{
 struct intel_vgpu_primary_plane_format p;
 struct intel_vgpu_cursor_plane_format c;
 int ret, tile_height = 1;

 memset(info, 0, sizeof(*info));

 if (plane_id == DRM_PLANE_TYPE_PRIMARY) {
  ret = intel_vgpu_decode_primary_plane(vgpu, &p);
  if (ret)
   return ret;
  info->start = p.base;
  info->start_gpa = p.base_gpa;
  info->width = p.width;
  info->height = p.height;
  info->stride = p.stride;
  info->drm_format = p.drm_format;

  switch (p.tiled) {
  case 131:
   info->drm_format_mod = DRM_FORMAT_MOD_LINEAR;
   break;
  case 130:
   info->drm_format_mod = I915_FORMAT_MOD_X_TILED;
   tile_height = 8;
   break;
  case 129:
   info->drm_format_mod = I915_FORMAT_MOD_Y_TILED;
   tile_height = 32;
   break;
  case 128:
   info->drm_format_mod = I915_FORMAT_MOD_Yf_TILED;
   tile_height = 32;
   break;
  default:
   gvt_vgpu_err("invalid tiling mode: %x\n", p.tiled);
  }
 } else if (plane_id == DRM_PLANE_TYPE_CURSOR) {
  ret = intel_vgpu_decode_cursor_plane(vgpu, &c);
  if (ret)
   return ret;
  info->start = c.base;
  info->start_gpa = c.base_gpa;
  info->width = c.width;
  info->height = c.height;
  info->stride = c.width * (c.bpp / 8);
  info->drm_format = c.drm_format;
  info->drm_format_mod = 0;
  info->x_pos = c.x_pos;
  info->y_pos = c.y_pos;

  if (validate_hotspot(&c)) {
   info->x_hot = c.x_hot;
   info->y_hot = c.y_hot;
  } else {
   info->x_hot = UINT_MAX;
   info->y_hot = UINT_MAX;
  }
 } else {
  gvt_vgpu_err("invalid plane id:%d\n", plane_id);
  return -EINVAL;
 }

 info->size = info->stride * roundup(info->height, tile_height);
 if (info->size == 0) {
  gvt_vgpu_err("fb size is zero\n");
  return -EINVAL;
 }

 if (info->start & (PAGE_SIZE - 1)) {
  gvt_vgpu_err("Not aligned fb address:0x%llx\n", info->start);
  return -EFAULT;
 }

 if (!intel_gvt_ggtt_validate_range(vgpu, info->start, info->size)) {
  gvt_vgpu_err("invalid gma addr\n");
  return -EFAULT;
 }

 return 0;
}
