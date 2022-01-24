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
typedef  int uint64_t ;
typedef  scalar_t__ u64 ;
struct drm_mode_fb_cmd2 {int width; int height; int* modifier; int* pitches; scalar_t__* offsets; int flags; scalar_t__* handles; int /*<<< orphan*/  pixel_format; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_format_info {int num_planes; unsigned int* char_per_block; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int DRM_FORMAT_MOD_LINEAR ; 
#define  DRM_FORMAT_MOD_SAMSUNG_64_32_TILE 128 
 int /*<<< orphan*/  DRM_FORMAT_NV12 ; 
 int DRM_MODE_FB_MODIFIERS ; 
 int EINVAL ; 
 int ERANGE ; 
 scalar_t__ UINT_MAX ; 
 struct drm_format_info* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_format_info const*,int,unsigned int) ; 
 struct drm_format_info* FUNC3 (struct drm_device*,struct drm_mode_fb_cmd2 const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct drm_format_name_buf*) ; 
 unsigned int FUNC5 (int,struct drm_format_info const*,int) ; 
 unsigned int FUNC6 (int,struct drm_format_info const*,int) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev,
			     const struct drm_mode_fb_cmd2 *r)
{
	const struct drm_format_info *info;
	int i;

	/* check if the format is supported at all */
	info = FUNC1(r->pixel_format);
	if (!info) {
		struct drm_format_name_buf format_name;

		FUNC0("bad framebuffer format %s\n",
			      FUNC4(r->pixel_format,
						  &format_name));
		return -EINVAL;
	}

	/* now let the driver pick its own format info */
	info = FUNC3(dev, r);

	if (r->width == 0) {
		FUNC0("bad framebuffer width %u\n", r->width);
		return -EINVAL;
	}

	if (r->height == 0) {
		FUNC0("bad framebuffer height %u\n", r->height);
		return -EINVAL;
	}

	for (i = 0; i < info->num_planes; i++) {
		unsigned int width = FUNC6(r->width, info, i);
		unsigned int height = FUNC5(r->height, info, i);
		unsigned int block_size = info->char_per_block[i];
		u64 min_pitch = FUNC2(info, i, width);

		if (!block_size && (r->modifier[i] == DRM_FORMAT_MOD_LINEAR)) {
			FUNC0("Format requires non-linear modifier for plane %d\n", i);
			return -EINVAL;
		}

		if (!r->handles[i]) {
			FUNC0("no buffer object handle for plane %d\n", i);
			return -EINVAL;
		}

		if (min_pitch > UINT_MAX)
			return -ERANGE;

		if ((uint64_t) height * r->pitches[i] + r->offsets[i] > UINT_MAX)
			return -ERANGE;

		if (block_size && r->pitches[i] < min_pitch) {
			FUNC0("bad pitch %u for plane %d\n", r->pitches[i], i);
			return -EINVAL;
		}

		if (r->modifier[i] && !(r->flags & DRM_MODE_FB_MODIFIERS)) {
			FUNC0("bad fb modifier %llu for plane %d\n",
				      r->modifier[i], i);
			return -EINVAL;
		}

		if (r->flags & DRM_MODE_FB_MODIFIERS &&
		    r->modifier[i] != r->modifier[0]) {
			FUNC0("bad fb modifier %llu for plane %d\n",
				      r->modifier[i], i);
			return -EINVAL;
		}

		/* modifier specific checks: */
		switch (r->modifier[i]) {
		case DRM_FORMAT_MOD_SAMSUNG_64_32_TILE:
			/* NOTE: the pitch restriction may be lifted later if it turns
			 * out that no hw has this restriction:
			 */
			if (r->pixel_format != DRM_FORMAT_NV12 ||
					width % 128 || height % 32 ||
					r->pitches[i] % 128) {
				FUNC0("bad modifier data for plane %d\n", i);
				return -EINVAL;
			}
			break;

		default:
			break;
		}
	}

	for (i = info->num_planes; i < 4; i++) {
		if (r->modifier[i]) {
			FUNC0("non-zero modifier for unused plane %d\n", i);
			return -EINVAL;
		}

		/* Pre-FB_MODIFIERS userspace didn't clear the structs properly. */
		if (!(r->flags & DRM_MODE_FB_MODIFIERS))
			continue;

		if (r->handles[i]) {
			FUNC0("buffer object handle for unused plane %d\n", i);
			return -EINVAL;
		}

		if (r->pitches[i]) {
			FUNC0("non-zero pitch for unused plane %d\n", i);
			return -EINVAL;
		}

		if (r->offsets[i]) {
			FUNC0("non-zero offset for unused plane %d\n", i);
			return -EINVAL;
		}
	}

	return 0;
}