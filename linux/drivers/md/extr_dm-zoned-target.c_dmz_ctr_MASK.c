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
struct dmz_target {int /*<<< orphan*/  metadata; int /*<<< orphan*/  bio_set; int /*<<< orphan*/  chunk_lock; int /*<<< orphan*/  chunk_wq; int /*<<< orphan*/  flush_wq; int /*<<< orphan*/  reclaim; int /*<<< orphan*/  flush_work; int /*<<< orphan*/  flush_list; int /*<<< orphan*/  flush_lock; int /*<<< orphan*/  chunk_rxtree; struct dmz_dev* dev; int /*<<< orphan*/ * ddev; } ;
struct dmz_dev {int zone_nr_sectors; int zone_nr_sectors_shift; int /*<<< orphan*/  name; } ;
struct dmz_bioctx {int dummy; } ;
struct dm_target {char* error; int max_io_len; int num_flush_bios; int num_discard_bios; int num_write_zeroes_bios; int per_io_data_size; int flush_supported; int discards_supported; int len; struct dmz_target* private; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_FLUSH_PERIOD ; 
 int /*<<< orphan*/  DMZ_MIN_BIOS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int WQ_MEM_RECLAIM ; 
 int WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dmz_dev*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct dmz_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct dmz_dev*,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmz_flush_work ; 
 int FUNC12 (struct dm_target*,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct dm_target*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct dmz_target*) ; 
 struct dmz_target* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct dm_target *ti, unsigned int argc, char **argv)
{
	struct dmz_target *dmz;
	struct dmz_dev *dev;
	int ret;

	/* Check arguments */
	if (argc != 1) {
		ti->error = "Invalid argument count";
		return -EINVAL;
	}

	/* Allocate and initialize the target descriptor */
	dmz = FUNC17(sizeof(struct dmz_target), GFP_KERNEL);
	if (!dmz) {
		ti->error = "Unable to allocate the zoned target descriptor";
		return -ENOMEM;
	}
	ti->private = dmz;

	/* Get the target zoned block device */
	ret = FUNC12(ti, argv[0]);
	if (ret) {
		dmz->ddev = NULL;
		goto err;
	}

	/* Initialize metadata */
	dev = dmz->dev;
	ret = FUNC8(dev, &dmz->metadata);
	if (ret) {
		ti->error = "Metadata initialization failed";
		goto err_dev;
	}

	/* Set target (no write same support) */
	ti->max_io_len = dev->zone_nr_sectors << 9;
	ti->num_flush_bios = 1;
	ti->num_discard_bios = 1;
	ti->num_write_zeroes_bios = 1;
	ti->per_io_data_size = sizeof(struct dmz_bioctx);
	ti->flush_supported = true;
	ti->discards_supported = true;

	/* The exposed capacity is the number of chunks that can be mapped */
	ti->len = (sector_t)FUNC13(dmz->metadata) << dev->zone_nr_sectors_shift;

	/* Zone BIO */
	ret = FUNC6(&dmz->bio_set, DMZ_MIN_BIOS, 0, 0);
	if (ret) {
		ti->error = "Create BIO set failed";
		goto err_meta;
	}

	/* Chunk BIO work */
	FUNC20(&dmz->chunk_lock);
	FUNC1(&dmz->chunk_rxtree, GFP_NOIO);
	dmz->chunk_wq = FUNC3("dmz_cwq_%s", WQ_MEM_RECLAIM | WQ_UNBOUND,
					0, dev->name);
	if (!dmz->chunk_wq) {
		ti->error = "Create chunk workqueue failed";
		ret = -ENOMEM;
		goto err_bio;
	}

	/* Flush work */
	FUNC21(&dmz->flush_lock);
	FUNC4(&dmz->flush_list);
	FUNC0(&dmz->flush_work, dmz_flush_work);
	dmz->flush_wq = FUNC2("dmz_fwq_%s", WQ_MEM_RECLAIM,
						dev->name);
	if (!dmz->flush_wq) {
		ti->error = "Create flush workqueue failed";
		ret = -ENOMEM;
		goto err_cwq;
	}
	FUNC18(dmz->flush_wq, &dmz->flush_work, DMZ_FLUSH_PERIOD);

	/* Initialize reclaim */
	ret = FUNC9(dev, dmz->metadata, &dmz->reclaim);
	if (ret) {
		ti->error = "Zone reclaim initialization failed";
		goto err_fwq;
	}

	FUNC10(dev, "Target device: %llu 512-byte logical sectors (%llu blocks)",
		     (unsigned long long)ti->len,
		     (unsigned long long)FUNC15(ti->len));

	return 0;
err_fwq:
	FUNC7(dmz->flush_wq);
err_cwq:
	FUNC7(dmz->chunk_wq);
err_bio:
	FUNC19(&dmz->chunk_lock);
	FUNC5(&dmz->bio_set);
err_meta:
	FUNC11(dmz->metadata);
err_dev:
	FUNC14(ti);
err:
	FUNC16(dmz);

	return ret;
}