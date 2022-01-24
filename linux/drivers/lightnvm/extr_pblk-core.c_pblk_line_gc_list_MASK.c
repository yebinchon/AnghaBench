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
struct list_head {int dummy; } ;
struct pblk_line_mgmt {struct list_head corrupt_list; struct list_head gc_empty_list; struct list_head gc_low_list; struct list_head gc_mid_list; struct list_head gc_high_list; struct list_head gc_full_list; struct list_head gc_werr_list; } ;
struct pblk_line_meta {int high_thrs; int mid_thrs; } ;
struct pblk_line {scalar_t__ gc_group; int sec_in_line; int /*<<< orphan*/  id; int /*<<< orphan*/  state; TYPE_1__* w_err_gc; int /*<<< orphan*/  lock; int /*<<< orphan*/ * vsc; } ;
struct pblk {int min_write_pgs_data; int min_write_pgs; int /*<<< orphan*/  rl; struct pblk_line_mgmt l_mg; struct pblk_line_meta lm; } ;
struct TYPE_2__ {scalar_t__ has_write_err; } ;

/* Variables and functions */
 scalar_t__ PBLK_LINEGC_EMPTY ; 
 scalar_t__ PBLK_LINEGC_FULL ; 
 scalar_t__ PBLK_LINEGC_HIGH ; 
 scalar_t__ PBLK_LINEGC_LOW ; 
 scalar_t__ PBLK_LINEGC_MID ; 
 scalar_t__ PBLK_LINEGC_NONE ; 
 scalar_t__ PBLK_LINEGC_WERR ; 
 int /*<<< orphan*/  PBLK_LINESTATE_CORRUPT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*,char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct list_head *FUNC6(struct pblk *pblk, struct pblk_line *line)
{
	struct pblk_line_meta *lm = &pblk->lm;
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct list_head *move_list = NULL;
	int packed_meta = (FUNC0(*line->vsc) / pblk->min_write_pgs_data)
			* (pblk->min_write_pgs - pblk->min_write_pgs_data);
	int vsc = FUNC0(*line->vsc) + packed_meta;

	FUNC1(&line->lock);

	if (line->w_err_gc->has_write_err) {
		if (line->gc_group != PBLK_LINEGC_WERR) {
			line->gc_group = PBLK_LINEGC_WERR;
			move_list = &l_mg->gc_werr_list;
			FUNC4(&pblk->rl);
		}
	} else if (!vsc) {
		if (line->gc_group != PBLK_LINEGC_FULL) {
			line->gc_group = PBLK_LINEGC_FULL;
			move_list = &l_mg->gc_full_list;
		}
	} else if (vsc < lm->high_thrs) {
		if (line->gc_group != PBLK_LINEGC_HIGH) {
			line->gc_group = PBLK_LINEGC_HIGH;
			move_list = &l_mg->gc_high_list;
		}
	} else if (vsc < lm->mid_thrs) {
		if (line->gc_group != PBLK_LINEGC_MID) {
			line->gc_group = PBLK_LINEGC_MID;
			move_list = &l_mg->gc_mid_list;
		}
	} else if (vsc < line->sec_in_line) {
		if (line->gc_group != PBLK_LINEGC_LOW) {
			line->gc_group = PBLK_LINEGC_LOW;
			move_list = &l_mg->gc_low_list;
		}
	} else if (vsc == line->sec_in_line) {
		if (line->gc_group != PBLK_LINEGC_EMPTY) {
			line->gc_group = PBLK_LINEGC_EMPTY;
			move_list = &l_mg->gc_empty_list;
		}
	} else {
		line->state = PBLK_LINESTATE_CORRUPT;
		FUNC5(FUNC2(pblk), line->id,
					line->state);

		line->gc_group = PBLK_LINEGC_NONE;
		move_list =  &l_mg->corrupt_list;
		FUNC3(pblk, "corrupted vsc for line %d, vsc:%d (%d/%d/%d)\n",
						line->id, vsc,
						line->sec_in_line,
						lm->high_thrs, lm->mid_thrs);
	}

	return move_list;
}