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
struct drm_unique {scalar_t__ unique_len; int /*<<< orphan*/  unique; } ;
struct drm_master {scalar_t__ unique_len; TYPE_1__* dev; int /*<<< orphan*/  unique; } ;
struct drm_file {struct drm_master* master; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  master_mutex; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct drm_device *dev, void *data,
		  struct drm_file *file_priv)
{
	struct drm_unique *u = data;
	struct drm_master *master = file_priv->master;

	FUNC1(&master->dev->master_mutex);
	if (u->unique_len >= master->unique_len) {
		if (FUNC0(u->unique, master->unique, master->unique_len)) {
			FUNC2(&master->dev->master_mutex);
			return -EFAULT;
		}
	}
	u->unique_len = master->unique_len;
	FUNC2(&master->dev->master_mutex);

	return 0;
}