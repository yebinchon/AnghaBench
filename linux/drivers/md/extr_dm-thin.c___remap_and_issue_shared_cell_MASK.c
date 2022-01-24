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
struct remap_info {int /*<<< orphan*/  issue_bios; TYPE_1__* tc; int /*<<< orphan*/  defer_bios; } ;
struct dm_thin_endio_hook {int /*<<< orphan*/  shared_read_entry; } ;
struct dm_bio_prison_cell {int /*<<< orphan*/  bios; } ;
struct bio {int /*<<< orphan*/  bi_opf; } ;
struct TYPE_4__ {int /*<<< orphan*/  shared_read_ds; } ;
struct TYPE_3__ {TYPE_2__* pool; } ;

/* Variables and functions */
 scalar_t__ REQ_OP_DISCARD ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct dm_thin_endio_hook* FUNC5 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct bio*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void *context,
					  struct dm_bio_prison_cell *cell)
{
	struct remap_info *info = context;
	struct bio *bio;

	while ((bio = FUNC2(&cell->bios))) {
		if (FUNC0(bio) == WRITE || FUNC7(bio->bi_opf) ||
		    FUNC3(bio) == REQ_OP_DISCARD)
			FUNC1(&info->defer_bios, bio);
		else {
			struct dm_thin_endio_hook *h = FUNC5(bio, sizeof(struct dm_thin_endio_hook));

			h->shared_read_entry = FUNC4(info->tc->pool->shared_read_ds);
			FUNC6(info->tc->pool, bio);
			FUNC1(&info->issue_bios, bio);
		}
	}
}