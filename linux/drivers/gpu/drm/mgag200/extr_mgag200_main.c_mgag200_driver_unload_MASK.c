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
struct mga_device {int dummy; } ;
struct drm_device {struct mga_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mga_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mga_device*) ; 

void FUNC3(struct drm_device *dev)
{
	struct mga_device *mdev = dev->dev_private;

	if (mdev == NULL)
		return;
	FUNC2(mdev);
	FUNC0(dev);
	FUNC1(mdev);
	dev->dev_private = NULL;
}