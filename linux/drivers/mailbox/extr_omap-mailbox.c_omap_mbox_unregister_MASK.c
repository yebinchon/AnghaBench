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
struct omap_mbox_device {struct omap_mbox** mboxes; int /*<<< orphan*/  elem; } ;
struct omap_mbox {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  omap_mbox_devices_lock ; 

__attribute__((used)) static int FUNC4(struct omap_mbox_device *mdev)
{
	int i;
	struct omap_mbox **mboxes;

	if (!mdev || !mdev->mboxes)
		return -EINVAL;

	FUNC2(&omap_mbox_devices_lock);
	FUNC1(&mdev->elem);
	FUNC3(&omap_mbox_devices_lock);

	mboxes = mdev->mboxes;
	for (i = 0; mboxes[i]; i++)
		FUNC0(mboxes[i]->dev);
	return 0;
}