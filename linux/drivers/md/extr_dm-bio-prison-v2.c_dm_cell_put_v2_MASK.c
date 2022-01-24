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
struct dm_bio_prison_v2 {int /*<<< orphan*/  lock; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dm_bio_prison_v2*,struct dm_bio_prison_cell_v2*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC3(struct dm_bio_prison_v2 *prison,
		    struct dm_bio_prison_cell_v2 *cell)
{
	bool r;
	unsigned long flags;

	FUNC1(&prison->lock, flags);
	r = FUNC0(prison, cell);
	FUNC2(&prison->lock, flags);

	return r;
}