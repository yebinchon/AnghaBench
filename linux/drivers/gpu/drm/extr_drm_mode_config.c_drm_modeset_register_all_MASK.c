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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 

int FUNC7(struct drm_device *dev)
{
	int ret;

	ret = FUNC5(dev);
	if (ret)
		goto err_plane;

	ret = FUNC1(dev);
	if  (ret)
		goto err_crtc;

	ret = FUNC3(dev);
	if (ret)
		goto err_encoder;

	ret = FUNC0(dev);
	if (ret)
		goto err_connector;

	return 0;

err_connector:
	FUNC4(dev);
err_encoder:
	FUNC2(dev);
err_crtc:
	FUNC6(dev);
err_plane:
	return ret;
}