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
struct dm_target {struct delay_c* private; } ;
struct dm_delay_info {struct delay_class* class; } ;
struct delay_class {scalar_t__ start; TYPE_1__* dev; } ;
struct delay_c {struct delay_class read; struct delay_class write; struct delay_class flush; } ;
struct TYPE_4__ {scalar_t__ bi_sector; } ;
struct bio {int bi_opf; TYPE_2__ bi_iter; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int REQ_PREFLUSH ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct delay_c*,struct delay_class*,struct bio*) ; 
 struct dm_delay_info* FUNC4 (struct bio*,int) ; 
 scalar_t__ FUNC5 (struct dm_target*,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct dm_target *ti, struct bio *bio)
{
	struct delay_c *dc = ti->private;
	struct delay_class *c;
	struct dm_delay_info *delayed = FUNC4(bio, sizeof(struct dm_delay_info));

	if (FUNC0(bio) == WRITE) {
		if (FUNC6(bio->bi_opf & REQ_PREFLUSH))
			c = &dc->flush;
		else
			c = &dc->write;
	} else {
		c = &dc->read;
	}
	delayed->class = c;
	FUNC2(bio, c->dev->bdev);
	if (FUNC1(bio))
		bio->bi_iter.bi_sector = c->start + FUNC5(ti, bio->bi_iter.bi_sector);

	return FUNC3(dc, c, bio);
}