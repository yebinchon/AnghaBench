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
struct per_bio_data {int dummy; } ;
struct log_writes_c {int sectorsize; int next_sector; int logging_enabled; int device_supports_discard; int /*<<< orphan*/  end_sector; TYPE_1__* logdev; TYPE_1__* dev; int /*<<< orphan*/  log_kthread; int /*<<< orphan*/  sectorshift; int /*<<< orphan*/  pending_blocks; int /*<<< orphan*/  io_blocks; int /*<<< orphan*/  super_done; int /*<<< orphan*/  wait; int /*<<< orphan*/  logging_blocks; int /*<<< orphan*/  unflushed_blocks; int /*<<< orphan*/  blocks_lock; } ;
struct dm_target {char* error; int num_flush_bios; int flush_supported; int num_discard_bios; int discards_supported; int per_io_data_size; struct log_writes_c* private; int /*<<< orphan*/  table; } ;
struct dm_arg_set {unsigned int argc; char** argv; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dm_target*,char const*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_target*,TYPE_1__*) ; 
 char* FUNC7 (struct dm_arg_set*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct log_writes_c*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct log_writes_c*,char*) ; 
 struct log_writes_c* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_writes_kthread ; 
 int /*<<< orphan*/  FUNC15 (struct log_writes_c*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct dm_target *ti, unsigned int argc, char **argv)
{
	struct log_writes_c *lc;
	struct dm_arg_set as;
	const char *devname, *logdevname;
	int ret;

	as.argc = argc;
	as.argv = argv;

	if (argc < 2) {
		ti->error = "Invalid argument count";
		return -EINVAL;
	}

	lc = FUNC14(sizeof(struct log_writes_c), GFP_KERNEL);
	if (!lc) {
		ti->error = "Cannot allocate context";
		return -ENOMEM;
	}
	FUNC16(&lc->blocks_lock);
	FUNC0(&lc->unflushed_blocks);
	FUNC0(&lc->logging_blocks);
	FUNC11(&lc->wait);
	FUNC10(&lc->super_done);
	FUNC3(&lc->io_blocks, 0);
	FUNC3(&lc->pending_blocks, 0);

	devname = FUNC7(&as);
	ret = FUNC5(ti, devname, FUNC8(ti->table), &lc->dev);
	if (ret) {
		ti->error = "Device lookup failed";
		goto bad;
	}

	logdevname = FUNC7(&as);
	ret = FUNC5(ti, logdevname, FUNC8(ti->table),
			    &lc->logdev);
	if (ret) {
		ti->error = "Log device lookup failed";
		FUNC6(ti, lc->dev);
		goto bad;
	}

	lc->sectorsize = FUNC4(lc->dev->bdev);
	lc->sectorshift = FUNC9(lc->sectorsize);
	lc->log_kthread = FUNC13(log_writes_kthread, lc, "log-write");
	if (FUNC1(lc->log_kthread)) {
		ret = FUNC2(lc->log_kthread);
		ti->error = "Couldn't alloc kthread";
		FUNC6(ti, lc->dev);
		FUNC6(ti, lc->logdev);
		goto bad;
	}

	/*
	 * next_sector is in 512b sectors to correspond to what bi_sector expects.
	 * The super starts at sector 0, and the next_sector is the next logical
	 * one based on the sectorsize of the device.
	 */
	lc->next_sector = lc->sectorsize >> SECTOR_SHIFT;
	lc->logging_enabled = true;
	lc->end_sector = FUNC15(lc);
	lc->device_supports_discard = true;

	ti->num_flush_bios = 1;
	ti->flush_supported = true;
	ti->num_discard_bios = 1;
	ti->discards_supported = true;
	ti->per_io_data_size = sizeof(struct per_bio_data);
	ti->private = lc;
	return 0;

bad:
	FUNC12(lc);
	return ret;
}