
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct drm_plane_state {int rotation; struct drm_framebuffer* fb; } ;
struct drm_framebuffer {TYPE_1__* format; } ;
struct drm_format_name_buf {int dummy; } ;
struct dc_plane_info {int visible; int global_alpha_value; int global_alpha; int per_pixel_alpha; int dcc; int plane_size; int tiling_info; void* rotation; int format; int color_space; scalar_t__ layer_index; int stereo_format; } ;
struct dc_plane_address {int dummy; } ;
struct amdgpu_framebuffer {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int format; } ;


 int DRM_ERROR (char*,int ) ;
 int DRM_MODE_ROTATE_MASK ;
 int EINVAL ;
 int PLANE_STEREO_FORMAT_NONE ;
 void* ROTATION_ANGLE_0 ;
 void* ROTATION_ANGLE_180 ;
 void* ROTATION_ANGLE_270 ;
 void* ROTATION_ANGLE_90 ;
 int SURFACE_PIXEL_FORMAT_GRPH_ABGR2101010 ;
 int SURFACE_PIXEL_FORMAT_GRPH_ABGR8888 ;
 int SURFACE_PIXEL_FORMAT_GRPH_ARGB2101010 ;
 int SURFACE_PIXEL_FORMAT_GRPH_ARGB8888 ;
 int SURFACE_PIXEL_FORMAT_GRPH_PALETA_256_COLORS ;
 int SURFACE_PIXEL_FORMAT_GRPH_RGB565 ;
 int SURFACE_PIXEL_FORMAT_VIDEO_420_YCbCr ;
 int SURFACE_PIXEL_FORMAT_VIDEO_420_YCrCb ;
 int drm_get_format_name (int,struct drm_format_name_buf*) ;
 int fill_blending_from_plane_state (struct drm_plane_state const*,int *,int *,int *) ;
 int fill_plane_buffer_attributes (struct amdgpu_device*,struct amdgpu_framebuffer const*,int ,void*,int const,int *,int *,int *,struct dc_plane_address*) ;
 int fill_plane_color_attributes (struct drm_plane_state const*,int ,int *) ;
 int memset (struct dc_plane_info*,int ,int) ;
 struct amdgpu_framebuffer* to_amdgpu_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static int
fill_dc_plane_info_and_addr(struct amdgpu_device *adev,
       const struct drm_plane_state *plane_state,
       const uint64_t tiling_flags,
       struct dc_plane_info *plane_info,
       struct dc_plane_address *address)
{
 const struct drm_framebuffer *fb = plane_state->fb;
 const struct amdgpu_framebuffer *afb =
  to_amdgpu_framebuffer(plane_state->fb);
 struct drm_format_name_buf format_name;
 int ret;

 memset(plane_info, 0, sizeof(*plane_info));

 switch (fb->format->format) {
 case 139:
  plane_info->format =
   SURFACE_PIXEL_FORMAT_GRPH_PALETA_256_COLORS;
  break;
 case 136:
  plane_info->format = SURFACE_PIXEL_FORMAT_GRPH_RGB565;
  break;
 case 132:
 case 140:
  plane_info->format = SURFACE_PIXEL_FORMAT_GRPH_ARGB8888;
  break;
 case 133:
 case 141:
  plane_info->format = SURFACE_PIXEL_FORMAT_GRPH_ARGB2101010;
  break;
 case 135:
 case 143:
  plane_info->format = SURFACE_PIXEL_FORMAT_GRPH_ABGR2101010;
  break;
 case 134:
 case 142:
  plane_info->format = SURFACE_PIXEL_FORMAT_GRPH_ABGR8888;
  break;
 case 137:
  plane_info->format = SURFACE_PIXEL_FORMAT_VIDEO_420_YCbCr;
  break;
 case 138:
  plane_info->format = SURFACE_PIXEL_FORMAT_VIDEO_420_YCrCb;
  break;
 default:
  DRM_ERROR(
   "Unsupported screen format %s\n",
   drm_get_format_name(fb->format->format, &format_name));
  return -EINVAL;
 }

 switch (plane_state->rotation & DRM_MODE_ROTATE_MASK) {
 case 131:
  plane_info->rotation = ROTATION_ANGLE_0;
  break;
 case 128:
  plane_info->rotation = ROTATION_ANGLE_90;
  break;
 case 130:
  plane_info->rotation = ROTATION_ANGLE_180;
  break;
 case 129:
  plane_info->rotation = ROTATION_ANGLE_270;
  break;
 default:
  plane_info->rotation = ROTATION_ANGLE_0;
  break;
 }

 plane_info->visible = 1;
 plane_info->stereo_format = PLANE_STEREO_FORMAT_NONE;

 plane_info->layer_index = 0;

 ret = fill_plane_color_attributes(plane_state, plane_info->format,
       &plane_info->color_space);
 if (ret)
  return ret;

 ret = fill_plane_buffer_attributes(adev, afb, plane_info->format,
        plane_info->rotation, tiling_flags,
        &plane_info->tiling_info,
        &plane_info->plane_size,
        &plane_info->dcc, address);
 if (ret)
  return ret;

 fill_blending_from_plane_state(
  plane_state, &plane_info->per_pixel_alpha,
  &plane_info->global_alpha, &plane_info->global_alpha_value);

 return 0;
}
