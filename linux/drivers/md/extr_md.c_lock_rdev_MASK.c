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
struct md_rdev {struct block_device* bdev; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int FMODE_EXCL ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct block_device*) ; 
 int FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct block_device* FUNC3 (int /*<<< orphan*/ ,int,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct md_rdev *rdev, dev_t dev, int shared)
{
	int err = 0;
	struct block_device *bdev;
	char b[BDEVNAME_SIZE];

	bdev = FUNC3(dev, FMODE_READ|FMODE_WRITE|FMODE_EXCL,
				 shared ? (struct md_rdev *)lock_rdev : rdev);
	if (FUNC0(bdev)) {
		FUNC4("md: could not open %s.\n", FUNC2(dev, b));
		return FUNC1(bdev);
	}
	rdev->bdev = bdev;
	return err;
}