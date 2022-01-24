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
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {scalar_t__ modifier; int* offsets; int /*<<< orphan*/ * pitches; int /*<<< orphan*/  height; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 
 scalar_t__ DRM_FORMAT_MOD_LINEAR ; 
 int /*<<< orphan*/  DRM_MODE_ROTATE_0 ; 
 int EINVAL ; 
 int ERANGE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,struct drm_framebuffer const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,struct drm_framebuffer const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_framebuffer const*,int) ; 
 int FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC9(int *x, int *y,
				 const struct drm_framebuffer *fb,
				 int color_plane)
{
	struct drm_i915_private *dev_priv = FUNC8(fb->dev);
	unsigned int height;

	if (fb->modifier != DRM_FORMAT_MOD_LINEAR &&
	    fb->offsets[color_plane] % FUNC6(dev_priv)) {
		FUNC1("Misaligned offset 0x%08x for color plane %d\n",
			      fb->offsets[color_plane], color_plane);
		return -EINVAL;
	}

	height = FUNC3(fb->height, fb, color_plane);
	height = FUNC0(height, FUNC5(fb, color_plane));

	/* Catch potential overflows early */
	if (FUNC2(u32, FUNC7(height, fb->pitches[color_plane]),
			    fb->offsets[color_plane])) {
		FUNC1("Bad offset 0x%08x or pitch %d for color plane %d\n",
			      fb->offsets[color_plane], fb->pitches[color_plane],
			      color_plane);
		return -ERANGE;
	}

	*x = 0;
	*y = 0;

	FUNC4(x, y,
				    fb, color_plane, DRM_MODE_ROTATE_0,
				    fb->pitches[color_plane],
				    fb->offsets[color_plane], 0);

	return 0;
}