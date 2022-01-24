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
struct pblk_line_mgmt {int /*<<< orphan*/  nr_free_lines; int /*<<< orphan*/  free_list; int /*<<< orphan*/  bad_list; int /*<<< orphan*/ * vsc_list; } ;
struct pblk_line_meta {long blk_per_line; long min_blk_line; } ;
struct pblk_line {int id; int /*<<< orphan*/  list; int /*<<< orphan*/  blk_in_line; int /*<<< orphan*/  state; int /*<<< orphan*/  lock; int /*<<< orphan*/ * vsc; int /*<<< orphan*/  gc_group; int /*<<< orphan*/  type; struct pblk* pblk; } ;
struct pblk {struct pblk_line_meta lm; struct pblk_line_mgmt l_mg; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBLK_LINEGC_NONE ; 
 int /*<<< orphan*/  PBLK_LINESTATE_BAD ; 
 int /*<<< orphan*/  PBLK_LINESTATE_NEW ; 
 int /*<<< orphan*/  PBLK_LINETYPE_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC2 (struct pblk*,struct pblk_line*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC4(struct pblk *pblk, struct pblk_line *line,
				 void *chunk_meta, int line_id)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct pblk_line_meta *lm = &pblk->lm;
	long nr_bad_chks, chk_in_line;

	line->pblk = pblk;
	line->id = line_id;
	line->type = PBLK_LINETYPE_FREE;
	line->state = PBLK_LINESTATE_NEW;
	line->gc_group = PBLK_LINEGC_NONE;
	line->vsc = &l_mg->vsc_list[line_id];
	FUNC3(&line->lock);

	nr_bad_chks = FUNC2(pblk, line, chunk_meta);

	chk_in_line = lm->blk_per_line - nr_bad_chks;
	if (nr_bad_chks < 0 || nr_bad_chks > lm->blk_per_line ||
					chk_in_line < lm->min_blk_line) {
		line->state = PBLK_LINESTATE_BAD;
		FUNC1(&line->list, &l_mg->bad_list);
		return 0;
	}

	FUNC0(&line->blk_in_line, chk_in_line);
	FUNC1(&line->list, &l_mg->free_list);
	l_mg->nr_free_lines++;

	return chk_in_line;
}