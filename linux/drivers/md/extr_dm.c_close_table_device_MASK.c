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
struct TYPE_2__ {int mode; int /*<<< orphan*/ * dax_dev; int /*<<< orphan*/ * bdev; } ;
struct table_device {TYPE_1__ dm_dev; } ;
struct mapped_device {int dummy; } ;

/* Variables and functions */
 int FMODE_EXCL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct table_device *td, struct mapped_device *md)
{
	if (!td->dm_dev.bdev)
		return;

	FUNC0(td->dm_dev.bdev, FUNC2(md));
	FUNC1(td->dm_dev.bdev, td->dm_dev.mode | FMODE_EXCL);
	FUNC3(td->dm_dev.dax_dev);
	td->dm_dev.bdev = NULL;
	td->dm_dev.dax_dev = NULL;
}