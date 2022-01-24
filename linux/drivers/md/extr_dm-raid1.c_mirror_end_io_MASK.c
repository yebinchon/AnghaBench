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
struct mirror_set {int /*<<< orphan*/  rh; } ;
struct mirror {TYPE_1__* dev; } ;
struct dm_target {scalar_t__ private; } ;
struct dm_bio_details {int /*<<< orphan*/ * bi_disk; } ;
struct dm_raid1_bio_record {struct dm_bio_details details; struct mirror* m; int /*<<< orphan*/  write_region; } ;
struct bio {int bi_opf; scalar_t__ bi_status; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_NOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DM_ENDIO_DONE ; 
 int DM_ENDIO_INCOMPLETE ; 
 int /*<<< orphan*/  DM_RAID1_READ_ERROR ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int REQ_PREFLUSH ; 
 int REQ_RAHEAD ; 
 int WRITE ; 
 int FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 scalar_t__ FUNC4 (struct mirror*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_bio_details*,struct bio*) ; 
 struct dm_raid1_bio_record* FUNC6 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mirror*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct mirror_set*,struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct mirror_set*,struct bio*,int) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct dm_target *ti, struct bio *bio,
		blk_status_t *error)
{
	int rw = FUNC2(bio);
	struct mirror_set *ms = (struct mirror_set *) ti->private;
	struct mirror *m = NULL;
	struct dm_bio_details *bd = NULL;
	struct dm_raid1_bio_record *bio_record =
	  FUNC6(bio, sizeof(struct dm_raid1_bio_record));

	/*
	 * We need to dec pending if this was a write.
	 */
	if (rw == WRITE) {
		if (!(bio->bi_opf & REQ_PREFLUSH) &&
		    FUNC3(bio) != REQ_OP_DISCARD)
			FUNC7(ms->rh, bio_record->write_region);
		return DM_ENDIO_DONE;
	}

	if (*error == BLK_STS_NOTSUPP)
		goto out;

	if (bio->bi_opf & REQ_RAHEAD)
		goto out;

	if (FUNC11(*error)) {
		if (!bio_record->details.bi_disk) {
			/*
			 * There wasn't enough memory to record necessary
			 * information for a retry or there was no other
			 * mirror in-sync.
			 */
			FUNC1("Mirror read failed.");
			return DM_ENDIO_DONE;
		}

		m = bio_record->m;

		FUNC0("Mirror read failed from %s. Trying alternative device.",
		      m->dev->name);

		FUNC8(m, DM_RAID1_READ_ERROR);

		/*
		 * A failed read is requeued for another attempt using an intact
		 * mirror.
		 */
		if (FUNC4(m) || FUNC9(ms, bio)) {
			bd = &bio_record->details;

			FUNC5(bd, bio);
			bio_record->details.bi_disk = NULL;
			bio->bi_status = 0;

			FUNC10(ms, bio, rw);
			return DM_ENDIO_INCOMPLETE;
		}
		FUNC0("All replicated volumes dead, failing I/O");
	}

out:
	bio_record->details.bi_disk = NULL;

	return DM_ENDIO_DONE;
}