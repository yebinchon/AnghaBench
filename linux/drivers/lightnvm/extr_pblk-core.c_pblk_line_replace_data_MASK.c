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
struct pblk_line_mgmt {int /*<<< orphan*/  free_lock; struct pblk_line* data_next; int /*<<< orphan*/  d_seq_nr; struct pblk_line* data_line; } ;
struct pblk_line {int /*<<< orphan*/  type; scalar_t__ seq_nr; int /*<<< orphan*/  left_eblks; int /*<<< orphan*/  left_seblks; } ;
struct pblk {int /*<<< orphan*/  rl; int /*<<< orphan*/  lm; struct pblk_line_mgmt l_mg; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBLK_LINETYPE_DATA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct pblk*,struct pblk_line*) ; 
 scalar_t__ FUNC3 (struct pblk*,struct pblk_line*) ; 
 struct pblk_line* FUNC4 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*,struct pblk_line*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk*,struct pblk_line*,struct pblk_line*) ; 
 struct pblk_line* FUNC7 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk_line*,struct pblk_line_mgmt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct pblk_line*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct pblk_line *FUNC13(struct pblk *pblk)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct pblk_line *cur, *new = NULL;
	unsigned int left_seblks;

	new = l_mg->data_next;
	if (!new)
		goto out;

	FUNC11(&l_mg->free_lock);
	cur = l_mg->data_line;
	l_mg->data_line = new;

	FUNC8(new, l_mg, &pblk->lm);
	FUNC12(&l_mg->free_lock);

retry_erase:
	left_seblks = FUNC0(&new->left_seblks);
	if (left_seblks) {
		/* If line is not fully erased, erase it */
		if (FUNC0(&new->left_eblks)) {
			if (FUNC3(pblk, new))
				goto out;
		} else {
			FUNC1();
		}
		goto retry_erase;
	}

	if (FUNC2(pblk, new))
		return NULL;

retry_setup:
	if (!FUNC6(pblk, new, cur)) {
		new = FUNC7(pblk, new);
		if (!new)
			goto out;

		goto retry_setup;
	}

	if (!FUNC5(pblk, new, 1)) {
		new = FUNC7(pblk, new);
		if (!new)
			goto out;

		goto retry_setup;
	}

	FUNC9(&pblk->rl, new, true);

	/* Allocate next line for preparation */
	FUNC11(&l_mg->free_lock);
	l_mg->data_next = FUNC4(pblk);
	if (!l_mg->data_next) {
		/* If we cannot get a new line, we need to stop the pipeline.
		 * Only allow as many writes in as we can store safely and then
		 * fail gracefully
		 */
		FUNC10(pblk, new);
		l_mg->data_next = NULL;
	} else {
		l_mg->data_next->seq_nr = l_mg->d_seq_nr++;
		l_mg->data_next->type = PBLK_LINETYPE_DATA;
	}
	FUNC12(&l_mg->free_lock);

out:
	return new;
}