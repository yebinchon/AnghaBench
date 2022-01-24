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
struct drm_client_dev {int /*<<< orphan*/  modeset_mutex; struct drm_device* dev; } ;

/* Variables and functions */
 int DRM_MODE_DPMS_ON ; 
 int EBUSY ; 
 int FUNC0 (struct drm_client_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_client_dev*,int) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct drm_client_dev *client, int mode)
{
	struct drm_device *dev = client->dev;
	int ret = 0;

	if (!FUNC3(dev))
		return -EBUSY;

	FUNC5(&client->modeset_mutex);
	if (FUNC2(dev))
		ret = FUNC0(client, mode == DRM_MODE_DPMS_ON);
	else
		FUNC1(client, mode);
	FUNC6(&client->modeset_mutex);

	FUNC4(dev);

	return ret;
}