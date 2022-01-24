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
struct dust_device {unsigned int sect_per_block; unsigned int blksz; unsigned long long start; int fail_read_on_bb; int quiet_mode; int /*<<< orphan*/  dust_lock; scalar_t__ badblock_count; int /*<<< orphan*/  badblocklist; int /*<<< orphan*/  sect_per_block_shift; int /*<<< orphan*/  dev; } ;
struct dm_target {char* error; int num_discard_bios; int num_flush_bios; struct dust_device* private; int /*<<< orphan*/  table; int /*<<< orphan*/  len; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RB_ROOT ; 
 unsigned int SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct dm_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct dm_target*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct dust_device*) ; 
 scalar_t__ FUNC7 (char*,int,unsigned int*) ; 
 struct dust_device* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,char*,unsigned long long*,char*) ; 
 scalar_t__ FUNC12 (unsigned int) ; 

__attribute__((used)) static int FUNC13(struct dm_target *ti, unsigned int argc, char **argv)
{
	struct dust_device *dd;
	unsigned long long tmp;
	char dummy;
	unsigned int blksz;
	unsigned int sect_per_block;
	sector_t DUST_MAX_BLKSZ_SECTORS = 2097152;
	sector_t max_block_sectors = FUNC9(ti->len, DUST_MAX_BLKSZ_SECTORS);

	if (argc != 3) {
		ti->error = "Invalid argument count";
		return -EINVAL;
	}

	if (FUNC7(argv[2], 10, &blksz) || !blksz) {
		ti->error = "Invalid block size parameter";
		return -EINVAL;
	}

	if (blksz < 512) {
		ti->error = "Block size must be at least 512";
		return -EINVAL;
	}

	if (!FUNC5(blksz)) {
		ti->error = "Block size must be a power of 2";
		return -EINVAL;
	}

	if (FUNC12(blksz) > max_block_sectors) {
		ti->error = "Block size is too large";
		return -EINVAL;
	}

	sect_per_block = (blksz >> SECTOR_SHIFT);

	if (FUNC11(argv[1], "%llu%c", &tmp, &dummy) != 1 || tmp != (sector_t)tmp) {
		ti->error = "Invalid device offset sector";
		return -EINVAL;
	}

	dd = FUNC8(sizeof(struct dust_device), GFP_KERNEL);
	if (dd == NULL) {
		ti->error = "Cannot allocate context";
		return -ENOMEM;
	}

	if (FUNC2(ti, argv[0], FUNC4(ti->table), &dd->dev)) {
		ti->error = "Device lookup failed";
		FUNC6(dd);
		return -EINVAL;
	}

	dd->sect_per_block = sect_per_block;
	dd->blksz = blksz;
	dd->start = tmp;

	dd->sect_per_block_shift = FUNC1(sect_per_block);

	/*
	 * Whether to fail a read on a "bad" block.
	 * Defaults to false; enabled later by message.
	 */
	dd->fail_read_on_bb = false;

	/*
	 * Initialize bad block list rbtree.
	 */
	dd->badblocklist = RB_ROOT;
	dd->badblock_count = 0;
	FUNC10(&dd->dust_lock);

	dd->quiet_mode = false;

	FUNC0(FUNC3(ti, dd->sect_per_block) != 0);

	ti->num_discard_bios = 1;
	ti->num_flush_bios = 1;
	ti->private = dd;

	return 0;
}