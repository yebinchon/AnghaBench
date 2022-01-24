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
struct request_queue {struct mapped_device* queuedata; } ;
struct mapped_device {int /*<<< orphan*/  flags; } ;
struct dm_table {int dummy; } ;
struct bio {int bi_opf; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 int /*<<< orphan*/  DMF_BLOCK_IO_FOR_SUSPEND ; 
 int REQ_RAHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 struct dm_table* FUNC1 (struct mapped_device*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*,struct dm_table*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mapped_device*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_qc_t FUNC7(struct request_queue *q, struct bio *bio)
{
	struct mapped_device *md = q->queuedata;
	blk_qc_t ret = BLK_QC_T_NONE;
	int srcu_idx;
	struct dm_table *map;

	map = FUNC1(md, &srcu_idx);

	/* if we're suspended, we have to queue this io for later */
	if (FUNC6(FUNC5(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags))) {
		FUNC3(md, srcu_idx);

		if (!(bio->bi_opf & REQ_RAHEAD))
			FUNC4(md, bio);
		else
			FUNC0(bio);
		return ret;
	}

	ret = FUNC2(md, map, bio);

	FUNC3(md, srcu_idx);
	return ret;
}