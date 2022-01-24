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
struct mapped_device {int /*<<< orphan*/  stats; int /*<<< orphan*/  queue; } ;
struct dm_io {int /*<<< orphan*/  stats_aux; int /*<<< orphan*/  start_time; struct bio* orig_bio; struct mapped_device* md; } ;
struct TYPE_3__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
struct TYPE_4__ {int /*<<< orphan*/  part0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 TYPE_2__* FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct dm_io *io)
{
	struct mapped_device *md = io->md;
	struct bio *bio = io->orig_bio;

	io->start_time = jiffies;

	FUNC6(md->queue, FUNC1(bio), FUNC2(bio),
			      &FUNC3(md)->part0);

	if (FUNC7(FUNC5(&md->stats)))
		FUNC4(&md->stats, FUNC0(bio),
				    bio->bi_iter.bi_sector, FUNC2(bio),
				    false, 0, &io->stats_aux);
}