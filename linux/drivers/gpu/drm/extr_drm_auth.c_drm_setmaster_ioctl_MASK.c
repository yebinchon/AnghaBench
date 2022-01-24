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
struct drm_file {TYPE_1__* master; int /*<<< orphan*/  is_master; } ;
struct drm_device {int /*<<< orphan*/  master_mutex; scalar_t__ master; } ;
struct TYPE_2__ {int /*<<< orphan*/  lessee_id; int /*<<< orphan*/ * lessor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct drm_file*) ; 
 int FUNC2 (struct drm_device*,struct drm_file*) ; 
 int FUNC3 (struct drm_device*,struct drm_file*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct drm_device *dev, void *data,
			struct drm_file *file_priv)
{
	int ret = 0;

	FUNC4(&dev->master_mutex);
	if (FUNC1(file_priv))
		goto out_unlock;

	if (dev->master) {
		ret = -EINVAL;
		goto out_unlock;
	}

	if (!file_priv->master) {
		ret = -EINVAL;
		goto out_unlock;
	}

	if (!file_priv->is_master) {
		ret = FUNC2(dev, file_priv);
		goto out_unlock;
	}

	if (file_priv->master->lessor != NULL) {
		FUNC0("Attempt to set lessee %d as master\n", file_priv->master->lessee_id);
		ret = -EINVAL;
		goto out_unlock;
	}

	ret = FUNC3(dev, file_priv, false);
out_unlock:
	FUNC5(&dev->master_mutex);
	return ret;
}