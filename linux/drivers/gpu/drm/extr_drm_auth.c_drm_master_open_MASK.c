#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int /*<<< orphan*/  master; TYPE_1__* minor; } ;
struct drm_device {int /*<<< orphan*/  master_mutex; int /*<<< orphan*/  master; } ;
struct TYPE_2__ {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_file *file_priv)
{
	struct drm_device *dev = file_priv->minor->dev;
	int ret = 0;

	/* if there is no current master make this fd it, but do not create
	 * any master object for render clients */
	FUNC2(&dev->master_mutex);
	if (!dev->master)
		ret = FUNC1(dev, file_priv);
	else
		file_priv->master = FUNC0(dev->master);
	FUNC3(&dev->master_mutex);

	return ret;
}