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
struct omap_mbox_device {int /*<<< orphan*/  cfg_lock; int /*<<< orphan*/  dev; } ;
struct omap_mbox {struct omap_mbox_device* parent; } ;
struct mbox_chan {int dummy; } ;

/* Variables and functions */
 struct omap_mbox* FUNC0 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct omap_mbox*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mbox_chan *chan)
{
	struct omap_mbox *mbox = FUNC0(chan);
	struct omap_mbox_device *mdev = mbox->parent;
	int ret = 0;

	FUNC1(&mdev->cfg_lock);
	FUNC4(mdev->dev);
	ret = FUNC3(mbox);
	if (ret)
		FUNC5(mdev->dev);
	FUNC2(&mdev->cfg_lock);
	return ret;
}