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
struct dm_bio_prison_cell {int /*<<< orphan*/  bios; int /*<<< orphan*/  holder; int /*<<< orphan*/  node; } ;
struct dm_bio_prison {int /*<<< orphan*/  cells; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dm_bio_prison *prison,
				struct dm_bio_prison_cell *cell)
{
	if (FUNC0(&cell->bios)) {
		FUNC2(&cell->node, &prison->cells);
		return 1;
	}

	cell->holder = FUNC1(&cell->bios);
	return 0;
}