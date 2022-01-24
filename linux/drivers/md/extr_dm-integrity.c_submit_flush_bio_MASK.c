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
struct dm_integrity_io {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dm_integrity_c {int /*<<< orphan*/  commit_work; int /*<<< orphan*/  commit_wq; TYPE_1__ endio_wait; int /*<<< orphan*/  flush_bio_list; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 struct bio* FUNC1 (struct dm_integrity_io*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct dm_integrity_c *ic, struct dm_integrity_io *dio)
{
	struct bio *bio;
	unsigned long flags;

	FUNC3(&ic->endio_wait.lock, flags);
	bio = FUNC1(dio, sizeof(struct dm_integrity_io));
	FUNC0(&ic->flush_bio_list, bio);
	FUNC4(&ic->endio_wait.lock, flags);

	FUNC2(ic->commit_wq, &ic->commit_work);
}