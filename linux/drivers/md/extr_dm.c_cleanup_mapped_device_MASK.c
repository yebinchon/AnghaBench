#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mapped_device {int /*<<< orphan*/  table_devices_lock; int /*<<< orphan*/  type_lock; int /*<<< orphan*/  suspend_lock; int /*<<< orphan*/ * bdev; int /*<<< orphan*/  io_barrier; scalar_t__ queue; TYPE_1__* disk; int /*<<< orphan*/ * dax_dev; int /*<<< orphan*/  io_bs; int /*<<< orphan*/  bs; scalar_t__ wq; } ;
struct TYPE_3__ {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  _minor_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct mapped_device *md)
{
	if (md->wq)
		FUNC5(md->wq);
	FUNC1(&md->bs);
	FUNC1(&md->io_bs);

	if (md->dax_dev) {
		FUNC7(md->dax_dev);
		FUNC9(md->dax_dev);
		md->dax_dev = NULL;
	}

	if (md->disk) {
		FUNC11(&_minor_lock);
		md->disk->private_data = NULL;
		FUNC12(&_minor_lock);
		FUNC4(md->disk);
		FUNC10(md->disk);
	}

	if (md->queue)
		FUNC2(md->queue);

	FUNC3(&md->io_barrier);

	if (md->bdev) {
		FUNC0(md->bdev);
		md->bdev = NULL;
	}

	FUNC8(&md->suspend_lock);
	FUNC8(&md->type_lock);
	FUNC8(&md->table_devices_lock);

	FUNC6(md);
}