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
struct drm_master {int /*<<< orphan*/  magic_map; } ;
struct drm_file {struct drm_master* master; scalar_t__ is_master; scalar_t__ magic; TYPE_1__* minor; } ;
struct drm_device {int /*<<< orphan*/  master_mutex; struct drm_master* master; } ;
struct TYPE_2__ {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 scalar_t__ FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_master*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_master*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_master**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct drm_file *file_priv)
{
	struct drm_device *dev = file_priv->minor->dev;
	struct drm_master *master = file_priv->master;

	FUNC7(&dev->master_mutex);
	if (file_priv->magic)
		FUNC6(&file_priv->master->magic_map, file_priv->magic);

	if (!FUNC2(file_priv))
		goto out;

	FUNC4(dev, master);

	if (dev->master == file_priv->master)
		FUNC1(dev, file_priv);
out:
	if (FUNC0(dev, DRIVER_MODESET) && file_priv->is_master) {
		/* Revoke any leases held by this or lessees, but only if
		 * this is the "real" master
		 */
		FUNC3(master);
	}

	/* drop the master reference held by the file priv */
	if (file_priv->master)
		FUNC5(&file_priv->master);
	FUNC8(&dev->master_mutex);
}