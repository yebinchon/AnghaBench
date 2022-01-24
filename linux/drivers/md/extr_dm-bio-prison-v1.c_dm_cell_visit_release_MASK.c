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
struct dm_bio_prison_cell {int /*<<< orphan*/  node; } ;
struct dm_bio_prison {int /*<<< orphan*/  lock; int /*<<< orphan*/  cells; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct dm_bio_prison *prison,
			   void (*visit_fn)(void *, struct dm_bio_prison_cell *),
			   void *context,
			   struct dm_bio_prison_cell *cell)
{
	unsigned long flags;

	FUNC1(&prison->lock, flags);
	visit_fn(context, cell);
	FUNC0(&cell->node, &prison->cells);
	FUNC2(&prison->lock, flags);
}