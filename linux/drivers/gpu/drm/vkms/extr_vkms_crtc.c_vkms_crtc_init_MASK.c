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
struct vkms_output {int /*<<< orphan*/  composer_workq; int /*<<< orphan*/  composer_lock; int /*<<< orphan*/  lock; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,struct drm_crtc*,struct drm_plane*,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vkms_output* FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vkms_crtc_funcs ; 
 int /*<<< orphan*/  vkms_crtc_helper_funcs ; 

int FUNC6(struct drm_device *dev, struct drm_crtc *crtc,
		   struct drm_plane *primary, struct drm_plane *cursor)
{
	struct vkms_output *vkms_out = FUNC4(crtc);
	int ret;

	ret = FUNC3(dev, crtc, primary, cursor,
					&vkms_crtc_funcs, NULL);
	if (ret) {
		FUNC0("Failed to init CRTC\n");
		return ret;
	}

	FUNC2(crtc, &vkms_crtc_helper_funcs);

	FUNC5(&vkms_out->lock);
	FUNC5(&vkms_out->composer_lock);

	vkms_out->composer_workq = FUNC1("vkms_composer", 0);
	if (!vkms_out->composer_workq)
		return -ENOMEM;

	return ret;
}