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
typedef  int u64 ;
struct pblk_line_mgmt {int /*<<< orphan*/  free_lock; } ;
struct pblk_line {int left_msecs; } ;
struct pblk {scalar_t__ min_write_pgs; struct pblk_line_mgmt l_mg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pblk*,struct pblk_line*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pblk *pblk, struct pblk_line *line,
				u64 written_secs)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	int i;

	for (i = 0; i < written_secs; i += pblk->min_write_pgs)
		FUNC0(pblk, line, pblk->min_write_pgs);

	FUNC1(&l_mg->free_lock);
	if (written_secs > line->left_msecs) {
		/*
		 * We have all data sectors written
		 * and some emeta sectors written too.
		 */
		line->left_msecs = 0;
	} else {
		/* We have only some data sectors written. */
		line->left_msecs -= written_secs;
	}
	FUNC2(&l_mg->free_lock);
}