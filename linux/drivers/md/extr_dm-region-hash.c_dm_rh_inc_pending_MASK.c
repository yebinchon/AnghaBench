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
struct dm_region_hash {int dummy; } ;
struct bio_list {struct bio* head; } ;
struct bio {int bi_opf; struct bio* bi_next; } ;

/* Variables and functions */
 scalar_t__ REQ_OP_DISCARD ; 
 int REQ_PREFLUSH ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_region_hash*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_region_hash*,int /*<<< orphan*/ ) ; 

void FUNC3(struct dm_region_hash *rh, struct bio_list *bios)
{
	struct bio *bio;

	for (bio = bios->head; bio; bio = bio->bi_next) {
		if (bio->bi_opf & REQ_PREFLUSH || FUNC0(bio) == REQ_OP_DISCARD)
			continue;
		FUNC2(rh, FUNC1(rh, bio));
	}
}