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
typedef  int /*<<< orphan*/  uint32_t ;
struct msm_gem_address_space {int dummy; } ;
struct drm_framebuffer {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  pitches; } ;
struct dpu_hw_fmt_layout {int /*<<< orphan*/ * plane_addr; int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  plane_addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DPU_MAX_IMG_HEIGHT ; 
 scalar_t__ DPU_MAX_IMG_WIDTH ; 
 int DPU_MAX_PLANES ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ERANGE ; 
 int FUNC3 (struct msm_gem_address_space*,struct drm_framebuffer*,struct dpu_hw_fmt_layout*) ; 
 int FUNC4 (struct msm_gem_address_space*,struct drm_framebuffer*,struct dpu_hw_fmt_layout*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct dpu_hw_fmt_layout*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(
		struct msm_gem_address_space *aspace,
		struct drm_framebuffer *fb,
		struct dpu_hw_fmt_layout *layout)
{
	uint32_t plane_addr[DPU_MAX_PLANES];
	int i, ret;

	if (!fb || !layout) {
		FUNC2("invalid arguments\n");
		return -EINVAL;
	}

	if ((fb->width > DPU_MAX_IMG_WIDTH) ||
			(fb->height > DPU_MAX_IMG_HEIGHT)) {
		FUNC2("image dimensions outside max range\n");
		return -ERANGE;
	}

	layout->format = FUNC8(FUNC7(fb));

	/* Populate the plane sizes etc via get_format */
	ret = FUNC5(layout->format, fb->width, fb->height,
			layout, fb->pitches);
	if (ret)
		return ret;

	for (i = 0; i < DPU_MAX_PLANES; ++i)
		plane_addr[i] = layout->plane_addr[i];

	/* Populate the addresses given the fb */
	if (FUNC1(layout->format) ||
			FUNC0(layout->format))
		ret = FUNC4(aspace, fb, layout);
	else
		ret = FUNC3(aspace, fb, layout);

	/* check if anything changed */
	if (!ret && !FUNC6(plane_addr, layout->plane_addr, sizeof(plane_addr)))
		ret = -EAGAIN;

	return ret;
}