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
struct dm_bio_prison {int /*<<< orphan*/  cells; int /*<<< orphan*/  cell_pool; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MIN_CELLS ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  _cell_cache ; 
 int /*<<< orphan*/  FUNC0 (struct dm_bio_prison*) ; 
 struct dm_bio_prison* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct dm_bio_prison *FUNC4(void)
{
	struct dm_bio_prison *prison = FUNC1(sizeof(*prison), GFP_KERNEL);
	int ret;

	if (!prison)
		return NULL;

	FUNC3(&prison->lock);

	ret = FUNC2(&prison->cell_pool, MIN_CELLS, _cell_cache);
	if (ret) {
		FUNC0(prison);
		return NULL;
	}

	prison->cells = RB_ROOT;

	return prison;
}