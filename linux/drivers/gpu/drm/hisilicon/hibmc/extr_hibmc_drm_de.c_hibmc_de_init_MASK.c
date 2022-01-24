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
struct hibmc_drm_private {struct drm_device* dev; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct drm_plane*) ; 
 int FUNC2 (struct drm_plane*) ; 
 struct drm_crtc* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,struct drm_crtc*,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  hibmc_crtc_funcs ; 
 int /*<<< orphan*/  hibmc_crtc_helper_funcs ; 
 struct drm_plane* FUNC7 (struct hibmc_drm_private*) ; 

int FUNC8(struct hibmc_drm_private *priv)
{
	struct drm_device *dev = priv->dev;
	struct drm_crtc *crtc;
	struct drm_plane *plane;
	int ret;

	plane = FUNC7(priv);
	if (FUNC1(plane)) {
		FUNC0("failed to create plane: %ld\n", FUNC2(plane));
		return FUNC2(plane);
	}

	crtc = FUNC3(dev->dev, sizeof(*crtc), GFP_KERNEL);
	if (!crtc) {
		FUNC0("failed to alloc memory when init crtc\n");
		return -ENOMEM;
	}

	ret = FUNC5(dev, crtc, plane,
					NULL, &hibmc_crtc_funcs, NULL);
	if (ret) {
		FUNC0("failed to init crtc: %d\n", ret);
		return ret;
	}

	ret = FUNC6(crtc, 256);
	if (ret) {
		FUNC0("failed to set gamma size: %d\n", ret);
		return ret;
	}
	FUNC4(crtc, &hibmc_crtc_helper_funcs);

	return 0;
}