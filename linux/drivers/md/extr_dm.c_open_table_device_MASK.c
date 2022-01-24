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
struct TYPE_4__ {int mode; int /*<<< orphan*/  dax_dev; struct block_device* bdev; } ;
struct table_device {TYPE_2__ dm_dev; } ;
struct mapped_device {int dummy; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_3__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block_device*) ; 
 int FMODE_EXCL ; 
 scalar_t__ FUNC1 (struct block_device*) ; 
 int FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  _dm_claim_ptr ; 
 int FUNC3 (struct block_device*,int /*<<< orphan*/ ) ; 
 struct block_device* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct block_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mapped_device*) ; 

__attribute__((used)) static int FUNC8(struct table_device *td, dev_t dev,
			     struct mapped_device *md)
{
	struct block_device *bdev;

	int r;

	FUNC0(td->dm_dev.bdev);

	bdev = FUNC4(dev, td->dm_dev.mode | FMODE_EXCL, _dm_claim_ptr);
	if (FUNC1(bdev))
		return FUNC2(bdev);

	r = FUNC3(bdev, FUNC7(md));
	if (r) {
		FUNC5(bdev, td->dm_dev.mode | FMODE_EXCL);
		return r;
	}

	td->dm_dev.bdev = bdev;
	td->dm_dev.dax_dev = FUNC6(bdev->bd_disk->disk_name);
	return 0;
}