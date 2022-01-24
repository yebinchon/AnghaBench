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
typedef  int /*<<< orphan*/  u64 ;
struct pblk_line_mgmt {int /*<<< orphan*/  gc_lock; } ;
struct pblk_line {scalar_t__ state; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  vsc; int /*<<< orphan*/  invalid_bitmap; } ;
struct pblk {struct pblk_line_mgmt l_mg; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ PBLK_LINESTATE_CLOSED ; 
 scalar_t__ PBLK_LINESTATE_FREE ; 
 scalar_t__ PBLK_LINESTATE_GC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct list_head* FUNC4 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct pblk *pblk, struct pblk_line *line,
			   u64 paddr)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct list_head *move_list = NULL;

	/* Lines being reclaimed (GC'ed) cannot be invalidated. Before the L2P
	 * table is modified with reclaimed sectors, a check is done to endure
	 * that newer updates are not overwritten.
	 */
	FUNC5(&line->lock);
	FUNC0(line->state == PBLK_LINESTATE_FREE);

	if (FUNC7(paddr, line->invalid_bitmap)) {
		FUNC1(1, "pblk: double invalidate\n");
		FUNC6(&line->lock);
		return;
	}
	FUNC2(line->vsc, -1);

	if (line->state == PBLK_LINESTATE_CLOSED)
		move_list = FUNC4(pblk, line);
	FUNC6(&line->lock);

	if (move_list) {
		FUNC5(&l_mg->gc_lock);
		FUNC5(&line->lock);
		/* Prevent moving a line that has just been chosen for GC */
		if (line->state == PBLK_LINESTATE_GC) {
			FUNC6(&line->lock);
			FUNC6(&l_mg->gc_lock);
			return;
		}
		FUNC6(&line->lock);

		FUNC3(&line->list, move_list);
		FUNC6(&l_mg->gc_lock);
	}
}