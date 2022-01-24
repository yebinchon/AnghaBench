#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_master {scalar_t__ lessee_id; scalar_t__ lessor; int /*<<< orphan*/  lessee_list; int /*<<< orphan*/  lessees; struct drm_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  idr_mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct TYPE_4__ {int /*<<< orphan*/  lessee_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* FUNC2 (struct drm_master*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct drm_master *master)
{
	struct drm_device *dev = master->dev;

	FUNC8(&dev->mode_config.idr_mutex);

	FUNC0("drm_lease_destroy %d\n", master->lessee_id);

	/* This master is referenced by all lessees, hence it cannot be destroyed
	 * until all of them have been
	 */
	FUNC1(!FUNC7(&master->lessees));

	/* Remove this master from the lessee idr in the owner */
	if (master->lessee_id != 0) {
		FUNC0("remove master %d from device list of lessees\n", master->lessee_id);
		FUNC5(&(FUNC2(master)->lessee_idr), master->lessee_id);
	}

	/* Remove this master from any lessee list it may be on */
	FUNC6(&master->lessee_list);

	FUNC9(&dev->mode_config.idr_mutex);

	if (master->lessor) {
		/* Tell the master to check the lessee list */
		FUNC4(dev);
		FUNC3(&master->lessor);
	}

	FUNC0("drm_lease_destroy done %d\n", master->lessee_id);
}