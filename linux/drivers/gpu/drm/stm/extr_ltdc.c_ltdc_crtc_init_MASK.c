#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int nb_layers; } ;
struct ltdc_device {TYPE_2__ caps; } ;
struct drm_plane {int dummy; } ;
struct drm_device {struct ltdc_device* dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_OVERLAY ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_device*,struct drm_crtc*,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ltdc_crtc_funcs ; 
 int /*<<< orphan*/  ltdc_crtc_helper_funcs ; 
 struct drm_plane* FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 

__attribute__((used)) static int FUNC8(struct drm_device *ddev, struct drm_crtc *crtc)
{
	struct ltdc_device *ldev = ddev->dev_private;
	struct drm_plane *primary, *overlay;
	unsigned int i;
	int ret;

	primary = FUNC6(ddev, DRM_PLANE_TYPE_PRIMARY);
	if (!primary) {
		FUNC1("Can not create primary plane\n");
		return -EINVAL;
	}

	ret = FUNC4(ddev, crtc, primary, NULL,
					&ltdc_crtc_funcs, NULL);
	if (ret) {
		FUNC1("Can not initialize CRTC\n");
		goto cleanup;
	}

	FUNC3(crtc, &ltdc_crtc_helper_funcs);

	FUNC5(crtc, CLUT_SIZE);
	FUNC2(crtc, 0, false, CLUT_SIZE);

	FUNC0("CRTC:%d created\n", crtc->base.id);

	/* Add planes. Note : the first layer is used by primary plane */
	for (i = 1; i < ldev->caps.nb_layers; i++) {
		overlay = FUNC6(ddev, DRM_PLANE_TYPE_OVERLAY);
		if (!overlay) {
			ret = -ENOMEM;
			FUNC1("Can not create overlay plane %d\n", i);
			goto cleanup;
		}
	}

	return 0;

cleanup:
	FUNC7(ddev);
	return ret;
}