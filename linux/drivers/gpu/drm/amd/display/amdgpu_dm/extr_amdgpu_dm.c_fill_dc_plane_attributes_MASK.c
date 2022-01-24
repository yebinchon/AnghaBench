#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct drm_plane_state {int /*<<< orphan*/  fb; } ;
struct drm_crtc_state {int dummy; } ;
struct dm_crtc_state {int dummy; } ;
struct dc_scaling_info {int /*<<< orphan*/  scaling_quality; int /*<<< orphan*/  clip_rect; int /*<<< orphan*/  dst_rect; int /*<<< orphan*/  src_rect; } ;
struct dc_plane_state {int /*<<< orphan*/  layer_index; int /*<<< orphan*/  dcc; int /*<<< orphan*/  global_alpha_value; int /*<<< orphan*/  global_alpha; int /*<<< orphan*/  per_pixel_alpha; int /*<<< orphan*/  visible; int /*<<< orphan*/  tiling_info; int /*<<< orphan*/  stereo_format; int /*<<< orphan*/  horizontal_mirror; int /*<<< orphan*/  rotation; int /*<<< orphan*/  plane_size; int /*<<< orphan*/  format; int /*<<< orphan*/  color_space; int /*<<< orphan*/  address; int /*<<< orphan*/  scaling_quality; int /*<<< orphan*/  clip_rect; int /*<<< orphan*/  dst_rect; int /*<<< orphan*/  src_rect; } ;
struct dc_plane_info {int /*<<< orphan*/  layer_index; int /*<<< orphan*/  dcc; int /*<<< orphan*/  global_alpha_value; int /*<<< orphan*/  global_alpha; int /*<<< orphan*/  per_pixel_alpha; int /*<<< orphan*/  visible; int /*<<< orphan*/  tiling_info; int /*<<< orphan*/  stereo_format; int /*<<< orphan*/  horizontal_mirror; int /*<<< orphan*/  rotation; int /*<<< orphan*/  plane_size; int /*<<< orphan*/  format; int /*<<< orphan*/  color_space; } ;
struct amdgpu_framebuffer {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dm_crtc_state*,struct dc_plane_state*) ; 
 int FUNC1 (struct amdgpu_device*,struct drm_plane_state*,int /*<<< orphan*/ ,struct dc_plane_info*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_plane_state*,struct dc_scaling_info*) ; 
 int FUNC3 (struct amdgpu_framebuffer const*,int /*<<< orphan*/ *) ; 
 struct amdgpu_framebuffer* FUNC4 (int /*<<< orphan*/ ) ; 
 struct dm_crtc_state* FUNC5 (struct drm_crtc_state*) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev,
				    struct dc_plane_state *dc_plane_state,
				    struct drm_plane_state *plane_state,
				    struct drm_crtc_state *crtc_state)
{
	struct dm_crtc_state *dm_crtc_state = FUNC5(crtc_state);
	const struct amdgpu_framebuffer *amdgpu_fb =
		FUNC4(plane_state->fb);
	struct dc_scaling_info scaling_info;
	struct dc_plane_info plane_info;
	uint64_t tiling_flags;
	int ret;

	ret = FUNC2(plane_state, &scaling_info);
	if (ret)
		return ret;

	dc_plane_state->src_rect = scaling_info.src_rect;
	dc_plane_state->dst_rect = scaling_info.dst_rect;
	dc_plane_state->clip_rect = scaling_info.clip_rect;
	dc_plane_state->scaling_quality = scaling_info.scaling_quality;

	ret = FUNC3(amdgpu_fb, &tiling_flags);
	if (ret)
		return ret;

	ret = FUNC1(adev, plane_state, tiling_flags,
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
	dc_plane_state->layer_index = plane_info.layer_index; // Always returns 0

	/*
	 * Always set input transfer function, since plane state is refreshed
	 * every time.
	 */
	ret = FUNC0(dm_crtc_state, dc_plane_state);
	if (ret)
		return ret;

	return 0;
}