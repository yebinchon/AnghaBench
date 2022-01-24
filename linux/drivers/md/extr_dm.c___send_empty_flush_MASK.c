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
struct dm_target {int /*<<< orphan*/  num_flush_bios; } ;
struct clone_info {int /*<<< orphan*/  bio; int /*<<< orphan*/  map; TYPE_2__* io; } ;
struct TYPE_4__ {TYPE_1__* md; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clone_info*,struct dm_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dm_target* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clone_info *ci)
{
	unsigned target_nr = 0;
	struct dm_target *ti;

	/*
	 * Empty flush uses a statically initialized bio, as the base for
	 * cloning.  However, blkg association requires that a bdev is
	 * associated with a gendisk, which doesn't happen until the bdev is
	 * opened.  So, blkg association is done at issue time of the flush
	 * rather than when the device is created in alloc_dev().
	 */
	FUNC4(ci->bio, ci->io->md->bdev);

	FUNC0(FUNC3(ci->bio));
	while ((ti = FUNC5(ci->map, target_nr++)))
		FUNC1(ci, ti, ti->num_flush_bios, NULL);

	FUNC2(ci->bio);

	return 0;
}