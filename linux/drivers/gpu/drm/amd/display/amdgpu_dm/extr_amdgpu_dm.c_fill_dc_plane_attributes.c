
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct drm_plane_state {int fb; } ;
struct drm_crtc_state {int dummy; } ;
struct dm_crtc_state {int dummy; } ;
struct dc_scaling_info {int scaling_quality; int clip_rect; int dst_rect; int src_rect; } ;
struct dc_plane_state {int layer_index; int dcc; int global_alpha_value; int global_alpha; int per_pixel_alpha; int visible; int tiling_info; int stereo_format; int horizontal_mirror; int rotation; int plane_size; int format; int color_space; int address; int scaling_quality; int clip_rect; int dst_rect; int src_rect; } ;
struct dc_plane_info {int layer_index; int dcc; int global_alpha_value; int global_alpha; int per_pixel_alpha; int visible; int tiling_info; int stereo_format; int horizontal_mirror; int rotation; int plane_size; int format; int color_space; } ;
struct amdgpu_framebuffer {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_dm_update_plane_color_mgmt (struct dm_crtc_state*,struct dc_plane_state*) ;
 int fill_dc_plane_info_and_addr (struct amdgpu_device*,struct drm_plane_state*,int ,struct dc_plane_info*,int *) ;
 int fill_dc_scaling_info (struct drm_plane_state*,struct dc_scaling_info*) ;
 int get_fb_info (struct amdgpu_framebuffer const*,int *) ;
 struct amdgpu_framebuffer* to_amdgpu_framebuffer (int ) ;
 struct dm_crtc_state* to_dm_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static int fill_dc_plane_attributes(struct amdgpu_device *adev,
        struct dc_plane_state *dc_plane_state,
        struct drm_plane_state *plane_state,
        struct drm_crtc_state *crtc_state)
{
 struct dm_crtc_state *dm_crtc_state = to_dm_crtc_state(crtc_state);
 const struct amdgpu_framebuffer *amdgpu_fb =
  to_amdgpu_framebuffer(plane_state->fb);
 struct dc_scaling_info scaling_info;
 struct dc_plane_info plane_info;
 uint64_t tiling_flags;
 int ret;

 ret = fill_dc_scaling_info(plane_state, &scaling_info);
 if (ret)
  return ret;

 dc_plane_state->src_rect = scaling_info.src_rect;
 dc_plane_state->dst_rect = scaling_info.dst_rect;
 dc_plane_state->clip_rect = scaling_info.clip_rect;
 dc_plane_state->scaling_quality = scaling_info.scaling_quality;

 ret = get_fb_info(amdgpu_fb, &tiling_flags);
 if (ret)
  return ret;

 ret = fill_dc_plane_info_and_addr(adev, plane_state, tiling_flags,
       &plane_info,
       &dc_plane_state->address);
 if (ret)
  return ret;

 dc_plane_state->format = plane_info.format;
 dc_plane_state->color_space = plane_info.color_space;
 dc_plane_state->format = plane_info.format;
 dc_plane_state->plane_size = plane_info.plane_size;
 dc_plane_state->rotation = plane_info.rotation;
 dc_plane_state->horizontal_mirror = plane_info.horizontal_mirror;
 dc_plane_state->stereo_format = plane_info.stereo_format;
 dc_plane_state->tiling_info = plane_info.tiling_info;
 dc_plane_state->visible = plane_info.visible;
 dc_plane_state->per_pixel_alpha = plane_info.per_pixel_alpha;
 dc_plane_state->global_alpha = plane_info.global_alpha;
 dc_plane_state->global_alpha_value = plane_info.global_alpha_value;
 dc_plane_state->dcc = plane_info.dcc;
 dc_plane_state->layer_index = plane_info.layer_index;





 ret = amdgpu_dm_update_plane_color_mgmt(dm_crtc_state, dc_plane_state);
 if (ret)
  return ret;

 return 0;
}
