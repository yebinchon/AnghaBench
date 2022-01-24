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
struct omap_mbox_device {int /*<<< orphan*/  controller; int /*<<< orphan*/  dev; int /*<<< orphan*/  elem; struct omap_mbox** mboxes; } ;
struct omap_mbox {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct omap_mbox*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  omap_mbox_class ; 
 int /*<<< orphan*/  omap_mbox_devices ; 
 int /*<<< orphan*/  omap_mbox_devices_lock ; 

__attribute__((used)) static int FUNC8(struct omap_mbox_device *mdev)
{
	int ret;
	int i;
	struct omap_mbox **mboxes;

	if (!mdev || !mdev->mboxes)
		return -EINVAL;

	mboxes = mdev->mboxes;
	for (i = 0; mboxes[i]; i++) {
		struct omap_mbox *mbox = mboxes[i];

		mbox->dev = FUNC2(&omap_mbox_class, mdev->dev,
					0, mbox, "%s", mbox->name);
		if (FUNC0(mbox->dev)) {
			ret = FUNC1(mbox->dev);
			goto err_out;
		}
	}

	FUNC6(&omap_mbox_devices_lock);
	FUNC5(&mdev->elem, &omap_mbox_devices);
	FUNC7(&omap_mbox_devices_lock);

	ret = FUNC4(mdev->dev, &mdev->controller);

err_out:
	if (ret) {
		while (i--)
			FUNC3(mboxes[i]->dev);
	}
	return ret;
}