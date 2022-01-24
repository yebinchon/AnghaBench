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
struct pblk_line_mgmt {int /*<<< orphan*/  gc_lock; } ;
struct pblk_line {scalar_t__ state; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  gc_group; int /*<<< orphan*/  id; } ;
struct pblk {struct pblk_line_mgmt l_mg; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBLK_LINEGC_NONE ; 
 scalar_t__ PBLK_LINESTATE_CLOSED ; 
 scalar_t__ PBLK_LINESTATE_GC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*) ; 
 struct list_head* FUNC3 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC7(struct pblk *pblk, struct pblk_line *line)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct list_head *move_list;

	FUNC4(&l_mg->gc_lock);
	FUNC4(&line->lock);
	FUNC0(line->state != PBLK_LINESTATE_GC);
	line->state = PBLK_LINESTATE_CLOSED;
	FUNC6(FUNC2(pblk), line->id,
					line->state);

	/* We need to reset gc_group in order to ensure that
	 * pblk_line_gc_list will return proper move_list
	 * since right now current line is not on any of the
	 * gc lists.
	 */
	line->gc_group = PBLK_LINEGC_NONE;
	move_list = FUNC3(pblk, line);
	FUNC5(&line->lock);
	FUNC1(&line->list, move_list);
	FUNC5(&l_mg->gc_lock);
}