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
struct pblk_line_mgmt {int /*<<< orphan*/  free_lock; int /*<<< orphan*/  nr_free_lines; int /*<<< orphan*/  free_list; } ;
struct pblk_line {scalar_t__ state; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; TYPE_1__* w_err_gc; int /*<<< orphan*/  gc_group; int /*<<< orphan*/  id; } ;
struct pblk_gc {int /*<<< orphan*/  pipeline_gc; } ;
struct pblk {int /*<<< orphan*/  rl; struct pblk_gc gc; struct pblk_line_mgmt l_mg; } ;
struct TYPE_2__ {scalar_t__ has_write_err; scalar_t__ has_gc_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBLK_LINEGC_NONE ; 
 scalar_t__ PBLK_LINESTATE_FREE ; 
 scalar_t__ PBLK_LINESTATE_GC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct pblk *pblk, struct pblk_line *line)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct pblk_gc *gc = &pblk->gc;

	FUNC9(&line->lock);
	FUNC0(line->state != PBLK_LINESTATE_GC);
	if (line->w_err_gc->has_gc_err) {
		FUNC10(&line->lock);
		FUNC4(pblk, "line %d had errors during GC\n", line->id);
		FUNC6(pblk, line);
		line->w_err_gc->has_gc_err = 0;
		return;
	}

	line->state = PBLK_LINESTATE_FREE;
	FUNC11(FUNC3(pblk), line->id,
					line->state);
	line->gc_group = PBLK_LINEGC_NONE;
	FUNC5(line);

	if (line->w_err_gc->has_write_err) {
		FUNC8(&pblk->rl);
		line->w_err_gc->has_write_err = 0;
	}

	FUNC10(&line->lock);
	FUNC1(&gc->pipeline_gc);

	FUNC9(&l_mg->free_lock);
	FUNC2(&line->list, &l_mg->free_list);
	l_mg->nr_free_lines++;
	FUNC10(&l_mg->free_lock);

	FUNC7(&pblk->rl, line);
}