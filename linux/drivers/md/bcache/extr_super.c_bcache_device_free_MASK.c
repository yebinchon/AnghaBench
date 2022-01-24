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
struct bcache_device {int /*<<< orphan*/  cl; int /*<<< orphan*/  stripe_sectors_dirty; int /*<<< orphan*/  full_dirty_stripes; int /*<<< orphan*/  bio_split; TYPE_1__* disk; scalar_t__ c; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  first_minor; scalar_t__ queue; int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int GENHD_FL_UP ; 
 int /*<<< orphan*/  FUNC0 (struct bcache_device*) ; 
 int /*<<< orphan*/  bcache_device_idx ; 
 int /*<<< orphan*/  bch_register_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC11(struct bcache_device *d)
{
	FUNC8(&bch_register_lock);

	FUNC9("%s stopped", d->disk->disk_name);

	if (d->c)
		FUNC0(d);
	if (d->disk && d->disk->flags & GENHD_FL_UP)
		FUNC4(d->disk);
	if (d->disk && d->disk->queue)
		FUNC2(d->disk->queue);
	if (d->disk) {
		FUNC6(&bcache_device_idx,
				  FUNC5(d->disk->first_minor));
		FUNC10(d->disk);
	}

	FUNC1(&d->bio_split);
	FUNC7(d->full_dirty_stripes);
	FUNC7(d->stripe_sectors_dirty);

	FUNC3(&d->cl);
}