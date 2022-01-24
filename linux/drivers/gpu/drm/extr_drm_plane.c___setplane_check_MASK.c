#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct drm_plane {int possible_crtcs; } ;
struct drm_framebuffer {int /*<<< orphan*/  modifier; TYPE_1__* format; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int ERANGE ; 
 scalar_t__ INT_MAX ; 
 int FUNC1 (struct drm_crtc*) ; 
 int FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct drm_format_name_buf*) ; 
 int FUNC4 (struct drm_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct drm_plane *plane,
			    struct drm_crtc *crtc,
			    struct drm_framebuffer *fb,
			    int32_t crtc_x, int32_t crtc_y,
			    uint32_t crtc_w, uint32_t crtc_h,
			    uint32_t src_x, uint32_t src_y,
			    uint32_t src_w, uint32_t src_h)
{
	int ret;

	/* Check whether this plane is usable on this CRTC */
	if (!(plane->possible_crtcs & FUNC1(crtc))) {
		FUNC0("Invalid crtc for plane\n");
		return -EINVAL;
	}

	/* Check whether this plane supports the fb pixel format. */
	ret = FUNC4(plane, fb->format->format,
					   fb->modifier);
	if (ret) {
		struct drm_format_name_buf format_name;

		FUNC0("Invalid pixel format %s, modifier 0x%llx\n",
			      FUNC3(fb->format->format,
						  &format_name),
			      fb->modifier);
		return ret;
	}

	/* Give drivers some help against integer overflows */
	if (crtc_w > INT_MAX ||
	    crtc_x > INT_MAX - (int32_t) crtc_w ||
	    crtc_h > INT_MAX ||
	    crtc_y > INT_MAX - (int32_t) crtc_h) {
		FUNC0("Invalid CRTC coordinates %ux%u+%d+%d\n",
			      crtc_w, crtc_h, crtc_x, crtc_y);
		return -ERANGE;
	}

	ret = FUNC2(src_x, src_y, src_w, src_h, fb);
	if (ret)
		return ret;

	return 0;
}