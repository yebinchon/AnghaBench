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
struct pblk_line_mgmt {int /*<<< orphan*/  gc_lock; struct list_head** gc_lists; } ;
struct pblk_line {scalar_t__ state; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  id; } ;
struct pblk_gc {int /*<<< orphan*/  read_inflight_gc; int /*<<< orphan*/  r_lock; int /*<<< orphan*/  r_list; } ;
struct TYPE_2__ {int rb_state; } ;
struct pblk {TYPE_1__ rl; struct pblk_gc gc; struct pblk_line_mgmt l_mg; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int PBLK_GC_L_QD ; 
 int PBLK_GC_NR_LISTS ; 
 scalar_t__ PBLK_LINESTATE_CLOSED ; 
 scalar_t__ PBLK_LINESTATE_GC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk*) ; 
 struct pblk_line* FUNC7 (struct pblk*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk_gc*) ; 
 int FUNC9 (struct pblk_gc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct pblk *pblk)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct pblk_gc *gc = &pblk->gc;
	struct pblk_line *line;
	struct list_head *group_list;
	bool run_gc;
	int read_inflight_gc, gc_group = 0, prev_group = 0;

	FUNC6(pblk);

	run_gc = FUNC9(&pblk->gc, &pblk->rl);
	if (!run_gc || (FUNC2(&gc->read_inflight_gc) >= PBLK_GC_L_QD))
		return;

next_gc_group:
	group_list = l_mg->gc_lists[gc_group++];

	do {
		FUNC10(&l_mg->gc_lock);

		line = FUNC7(pblk, group_list);
		if (!line) {
			FUNC11(&l_mg->gc_lock);
			break;
		}

		FUNC10(&line->lock);
		FUNC0(line->state != PBLK_LINESTATE_CLOSED);
		line->state = PBLK_LINESTATE_GC;
		FUNC12(FUNC5(pblk), line->id,
					line->state);
		FUNC11(&line->lock);

		FUNC4(&line->list);
		FUNC11(&l_mg->gc_lock);

		FUNC10(&gc->r_lock);
		FUNC3(&line->list, &gc->r_list);
		FUNC11(&gc->r_lock);

		read_inflight_gc = FUNC1(&gc->read_inflight_gc);
		FUNC8(gc);

		prev_group = 1;

		/* No need to queue up more GC lines than we can handle */
		run_gc = FUNC9(&pblk->gc, &pblk->rl);
		if (!run_gc || read_inflight_gc >= PBLK_GC_L_QD)
			break;
	} while (1);

	if (!prev_group && pblk->rl.rb_state > gc_group &&
						gc_group < PBLK_GC_NR_LISTS)
		goto next_gc_group;
}