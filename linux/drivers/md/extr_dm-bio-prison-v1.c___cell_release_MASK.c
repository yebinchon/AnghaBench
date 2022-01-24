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
struct dm_bio_prison_cell {int /*<<< orphan*/  bios; scalar_t__ holder; int /*<<< orphan*/  node; } ;
struct dm_bio_prison {int /*<<< orphan*/  cells; } ;
struct bio_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio_list*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dm_bio_prison *prison,
			   struct dm_bio_prison_cell *cell,
			   struct bio_list *inmates)
{
	FUNC2(&cell->node, &prison->cells);

	if (inmates) {
		if (cell->holder)
			FUNC0(inmates, cell->holder);
		FUNC1(inmates, &cell->bios);
	}
}