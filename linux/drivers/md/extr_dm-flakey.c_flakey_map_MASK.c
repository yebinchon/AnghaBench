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
struct per_bio_data {int bio_submitted; } ;
struct flakey_c {unsigned int start_time; unsigned int up_interval; unsigned int down_interval; scalar_t__ corrupt_bio_rw; scalar_t__ corrupt_bio_byte; int /*<<< orphan*/  flags; } ;
struct dm_target {struct flakey_c* private; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int DM_MAPIO_KILL ; 
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 int /*<<< orphan*/  DROP_WRITES ; 
 int /*<<< orphan*/  ERROR_WRITES ; 
 unsigned int HZ ; 
 scalar_t__ READ ; 
 scalar_t__ REQ_OP_ZONE_RESET ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*,struct flakey_c*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 scalar_t__ FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,struct flakey_c*) ; 
 struct per_bio_data* FUNC6 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_target*,struct bio*) ; 
 unsigned int jiffies ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dm_target *ti, struct bio *bio)
{
	struct flakey_c *fc = ti->private;
	unsigned elapsed;
	struct per_bio_data *pb = FUNC6(bio, sizeof(struct per_bio_data));
	pb->bio_submitted = false;

	/* Do not fail reset zone */
	if (FUNC4(bio) == REQ_OP_ZONE_RESET)
		goto map_bio;

	/* Are we alive ? */
	elapsed = (jiffies - fc->start_time) / HZ;
	if (elapsed % (fc->up_interval + fc->down_interval) >= fc->up_interval) {
		/*
		 * Flag this bio as submitted while down.
		 */
		pb->bio_submitted = true;

		/*
		 * Error reads if neither corrupt_bio_byte or drop_writes or error_writes are set.
		 * Otherwise, flakey_end_io() will decide if the reads should be modified.
		 */
		if (FUNC1(bio) == READ) {
			if (!fc->corrupt_bio_byte && !FUNC8(DROP_WRITES, &fc->flags) &&
			    !FUNC8(ERROR_WRITES, &fc->flags))
				return DM_MAPIO_KILL;
			goto map_bio;
		}

		/*
		 * Drop or error writes?
		 */
		if (FUNC8(DROP_WRITES, &fc->flags)) {
			FUNC2(bio);
			return DM_MAPIO_SUBMITTED;
		}
		else if (FUNC8(ERROR_WRITES, &fc->flags)) {
			FUNC3(bio);
			return DM_MAPIO_SUBMITTED;
		}

		/*
		 * Corrupt matching writes.
		 */
		if (fc->corrupt_bio_byte && (fc->corrupt_bio_rw == WRITE)) {
			if (FUNC0(bio, fc))
				FUNC5(bio, fc);
			goto map_bio;
		}

		/*
		 * By default, error all I/O.
		 */
		return DM_MAPIO_KILL;
	}

map_bio:
	FUNC7(ti, bio);

	return DM_MAPIO_REMAPPED;
}