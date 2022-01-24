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
struct drm_modeset_ctl {unsigned int crtc; int cmd; } ;
struct drm_file {int dummy; } ;
struct drm_device {unsigned int num_crtcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int EINVAL ; 
#define  _DRM_POST_MODESET 129 
#define  _DRM_PRE_MODESET 128 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,unsigned int) ; 

int FUNC3(struct drm_device *dev, void *data,
				 struct drm_file *file_priv)
{
	struct drm_modeset_ctl *modeset = data;
	unsigned int pipe;

	/* If drm_vblank_init() hasn't been called yet, just no-op */
	if (!dev->num_crtcs)
		return 0;

	/* KMS drivers handle this internally */
	if (!FUNC0(dev, DRIVER_LEGACY))
		return 0;

	pipe = modeset->crtc;
	if (pipe >= dev->num_crtcs)
		return -EINVAL;

	switch (modeset->cmd) {
	case _DRM_PRE_MODESET:
		FUNC2(dev, pipe);
		break;
	case _DRM_POST_MODESET:
		FUNC1(dev, pipe);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}