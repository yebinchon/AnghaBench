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
struct drm_client_dev {struct drm_device* dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct drm_client_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 

int FUNC3(struct drm_client_dev *client)
{
	struct drm_device *dev = client->dev;
	int ret;

	if (!FUNC1(dev))
		return -EBUSY;

	ret = FUNC0(client);

	FUNC2(dev);

	return ret;
}