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
struct remap_info {int /*<<< orphan*/  issue_bios; TYPE_1__* tc; int /*<<< orphan*/  defer_bios; } ;
struct dm_bio_prison_cell {int /*<<< orphan*/  bios; } ;
struct bio {int /*<<< orphan*/  bi_opf; } ;
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 scalar_t__ REQ_OP_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bio*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *context,
				       struct dm_bio_prison_cell *cell)
{
	struct remap_info *info = context;
	struct bio *bio;

	while ((bio = FUNC1(&cell->bios))) {
		if (FUNC4(bio->bi_opf) || FUNC2(bio) == REQ_OP_DISCARD)
			FUNC0(&info->defer_bios, bio);
		else {
			FUNC3(info->tc->pool, bio);

			/*
			 * We can't issue the bios with the bio prison lock
			 * held, so we add them to a list to issue on
			 * return from this function.
			 */
			FUNC0(&info->issue_bios, bio);
		}
	}
}