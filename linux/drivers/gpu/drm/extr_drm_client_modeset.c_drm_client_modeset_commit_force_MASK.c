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
 int FUNC0 (struct drm_client_dev*,int) ; 
 int FUNC1 (struct drm_client_dev*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct drm_client_dev *client)
{
	struct drm_device *dev = client->dev;
	int ret;

	FUNC3(&client->modeset_mutex);
	if (FUNC2(dev))
		ret = FUNC0(client, true);
	else
		ret = FUNC1(client);
	FUNC4(&client->modeset_mutex);

	return ret;
}