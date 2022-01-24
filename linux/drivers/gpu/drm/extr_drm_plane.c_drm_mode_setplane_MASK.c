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
struct drm_plane {int dummy; } ;
struct drm_mode_set_plane {int /*<<< orphan*/  src_h; int /*<<< orphan*/  src_w; int /*<<< orphan*/  src_y; int /*<<< orphan*/  src_x; int /*<<< orphan*/  crtc_h; int /*<<< orphan*/  crtc_w; int /*<<< orphan*/  crtc_y; int /*<<< orphan*/  crtc_x; scalar_t__ crtc_id; scalar_t__ fb_id; scalar_t__ plane_id; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct drm_crtc* FUNC2 (struct drm_device*,struct drm_file*,scalar_t__) ; 
 struct drm_framebuffer* FUNC3 (struct drm_device*,struct drm_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_framebuffer*) ; 
 struct drm_plane* FUNC5 (struct drm_device*,struct drm_file*,scalar_t__) ; 
 int FUNC6 (struct drm_plane*,struct drm_crtc*,struct drm_framebuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct drm_device *dev, void *data,
		      struct drm_file *file_priv)
{
	struct drm_mode_set_plane *plane_req = data;
	struct drm_plane *plane;
	struct drm_crtc *crtc = NULL;
	struct drm_framebuffer *fb = NULL;
	int ret;

	if (!FUNC1(dev, DRIVER_MODESET))
		return -EOPNOTSUPP;

	/*
	 * First, find the plane, crtc, and fb objects.  If not available,
	 * we don't bother to call the driver.
	 */
	plane = FUNC5(dev, file_priv, plane_req->plane_id);
	if (!plane) {
		FUNC0("Unknown plane ID %d\n",
			      plane_req->plane_id);
		return -ENOENT;
	}

	if (plane_req->fb_id) {
		fb = FUNC3(dev, file_priv, plane_req->fb_id);
		if (!fb) {
			FUNC0("Unknown framebuffer ID %d\n",
				      plane_req->fb_id);
			return -ENOENT;
		}

		crtc = FUNC2(dev, file_priv, plane_req->crtc_id);
		if (!crtc) {
			FUNC4(fb);
			FUNC0("Unknown crtc ID %d\n",
				      plane_req->crtc_id);
			return -ENOENT;
		}
	}

	ret = FUNC6(plane, crtc, fb,
				plane_req->crtc_x, plane_req->crtc_y,
				plane_req->crtc_w, plane_req->crtc_h,
				plane_req->src_x, plane_req->src_y,
				plane_req->src_w, plane_req->src_h);

	if (fb)
		FUNC4(fb);

	return ret;
}