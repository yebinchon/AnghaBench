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
struct mddev {int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  openers; int /*<<< orphan*/  flags; TYPE_1__* gendisk; } ;
struct block_device {TYPE_1__* bd_disk; int /*<<< orphan*/  bd_dev; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {struct mddev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  MD_CLOSING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  md_misc_wq ; 
 struct mddev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct block_device *bdev, fmode_t mode)
{
	/*
	 * Succeed if we can lock the mddev, which confirms that
	 * it isn't being stopped right now.
	 */
	struct mddev *mddev = FUNC4(bdev->bd_dev);
	int err;

	if (!mddev)
		return -ENODEV;

	if (mddev->gendisk != bdev->bd_disk) {
		/* we are racing with mddev_put which is discarding this
		 * bd_disk.
		 */
		FUNC5(mddev);
		/* Wait until bdev->bd_disk is definitely gone */
		FUNC3(md_misc_wq);
		/* Then retry the open from the top */
		return -ERESTARTSYS;
	}
	FUNC0(mddev != bdev->bd_disk->private_data);

	if ((err = FUNC6(&mddev->open_mutex)))
		goto out;

	if (FUNC8(MD_CLOSING, &mddev->flags)) {
		FUNC7(&mddev->open_mutex);
		err = -ENODEV;
		goto out;
	}

	err = 0;
	FUNC1(&mddev->openers);
	FUNC7(&mddev->open_mutex);

	FUNC2(bdev);
 out:
	if (err)
		FUNC5(mddev);
	return err;
}