#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dm_target {struct clone* private; } ;
struct clone {unsigned int nr_ctr_args; int /*<<< orphan*/ * ctr_args; TYPE_6__* source_dev; TYPE_4__* dest_dev; TYPE_2__* metadata_dev; int /*<<< orphan*/  hydrations_in_flight; int /*<<< orphan*/  nr_regions; int /*<<< orphan*/  cmd; scalar_t__ region_size; } ;
typedef  int status_type_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ dm_block_t ;
struct TYPE_12__ {TYPE_5__* bdev; } ;
struct TYPE_11__ {int /*<<< orphan*/  bd_dev; } ;
struct TYPE_10__ {TYPE_3__* bdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  bd_dev; } ;
struct TYPE_8__ {TYPE_1__* bdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
#define  CM_FAIL 132 
#define  CM_READ_ONLY 131 
#define  CM_WRITE 130 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DM_CLONE_METADATA_BLOCK_SIZE ; 
 unsigned int DM_STATUS_NOFLUSH_FLAG ; 
#define  STATUSTYPE_INFO 129 
#define  STATUSTYPE_TABLE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct clone*) ; 
 int /*<<< orphan*/  FUNC4 (struct clone*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC9 (struct clone*,char*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct clone*,char*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct clone*) ; 

__attribute__((used)) static void FUNC13(struct dm_target *ti, status_type_t type,
			 unsigned int status_flags, char *result,
			 unsigned int maxlen)
{
	int r;
	unsigned int i;
	ssize_t sz = 0;
	dm_block_t nr_free_metadata_blocks = 0;
	dm_block_t nr_metadata_blocks = 0;
	char buf[BDEVNAME_SIZE];
	struct clone *clone = ti->private;

	switch (type) {
	case STATUSTYPE_INFO:
		if (FUNC12(clone) == CM_FAIL) {
			FUNC0("Fail");
			break;
		}

		/* Commit to ensure statistics aren't out-of-date */
		if (!(status_flags & DM_STATUS_NOFLUSH_FLAG) && !FUNC8(ti))
			(void) FUNC4(clone);

		r = FUNC5(clone->cmd, &nr_free_metadata_blocks);

		if (r) {
			FUNC1("%s: dm_clone_get_free_metadata_block_count returned %d",
			      FUNC3(clone), r);
			goto error;
		}

		r = FUNC6(clone->cmd, &nr_metadata_blocks);

		if (r) {
			FUNC1("%s: dm_clone_get_metadata_dev_size returned %d",
			      FUNC3(clone), r);
			goto error;
		}

		FUNC0("%u %llu/%llu %llu %lu/%lu %u ",
		       DM_CLONE_METADATA_BLOCK_SIZE,
		       (unsigned long long)(nr_metadata_blocks - nr_free_metadata_blocks),
		       (unsigned long long)nr_metadata_blocks,
		       (unsigned long long)clone->region_size,
		       FUNC7(clone->cmd),
		       clone->nr_regions,
		       FUNC2(&clone->hydrations_in_flight));

		FUNC10(clone, result, maxlen, &sz);
		FUNC9(clone, result, maxlen, &sz);

		switch (FUNC12(clone)) {
		case CM_WRITE:
			FUNC0("rw");
			break;
		case CM_READ_ONLY:
			FUNC0("ro");
			break;
		case CM_FAIL:
			FUNC0("Fail");
		}

		break;

	case STATUSTYPE_TABLE:
		FUNC11(buf, clone->metadata_dev->bdev->bd_dev);
		FUNC0("%s ", buf);

		FUNC11(buf, clone->dest_dev->bdev->bd_dev);
		FUNC0("%s ", buf);

		FUNC11(buf, clone->source_dev->bdev->bd_dev);
		FUNC0("%s", buf);

		for (i = 0; i < clone->nr_ctr_args; i++)
			FUNC0(" %s", clone->ctr_args[i]);
	}

	return;

error:
	FUNC0("Error");
}