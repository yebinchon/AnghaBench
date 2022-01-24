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
struct thin_c {int /*<<< orphan*/  lock; int /*<<< orphan*/  deferred_cells; struct pool* pool; } ;
struct pool {int /*<<< orphan*/  (* process_cell ) (struct thin_c*,struct dm_bio_prison_cell*) ;int /*<<< orphan*/  (* process_discard_cell ) (struct thin_c*,struct dm_bio_prison_cell*) ;struct dm_bio_prison_cell** cell_sort_array; } ;
struct list_head {int dummy; } ;
struct dm_bio_prison_cell {int /*<<< orphan*/  holder; int /*<<< orphan*/  user_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 scalar_t__ REQ_OP_DISCARD ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pool*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC5 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct list_head*) ; 
 unsigned int FUNC8 (struct pool*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct thin_c*,struct dm_bio_prison_cell*) ; 
 int /*<<< orphan*/  FUNC12 (struct thin_c*,struct dm_bio_prison_cell*) ; 

__attribute__((used)) static void FUNC13(struct thin_c *tc)
{
	struct pool *pool = tc->pool;
	unsigned long flags;
	struct list_head cells;
	struct dm_bio_prison_cell *cell;
	unsigned i, j, count;

	FUNC1(&cells);

	FUNC9(&tc->lock, flags);
	FUNC7(&tc->deferred_cells, &cells);
	FUNC10(&tc->lock, flags);

	if (FUNC5(&cells))
		return;

	do {
		count = FUNC8(tc->pool, &cells);

		for (i = 0; i < count; i++) {
			cell = pool->cell_sort_array[i];
			FUNC0(!cell->holder);

			/*
			 * If we've got no free new_mapping structs, and processing
			 * this bio might require one, we pause until there are some
			 * prepared mappings to process.
			 */
			if (FUNC3(pool)) {
				for (j = i; j < count; j++)
					FUNC4(&pool->cell_sort_array[j]->user_list, &cells);

				FUNC9(&tc->lock, flags);
				FUNC6(&cells, &tc->deferred_cells);
				FUNC10(&tc->lock, flags);
				return;
			}

			if (FUNC2(cell->holder) == REQ_OP_DISCARD)
				pool->process_discard_cell(tc, cell);
			else
				pool->process_cell(tc, cell);
		}
	} while (!FUNC5(&cells));
}