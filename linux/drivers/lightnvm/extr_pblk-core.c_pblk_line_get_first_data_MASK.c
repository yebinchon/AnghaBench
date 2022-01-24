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
struct pblk_line_mgmt {int /*<<< orphan*/  free_lock; TYPE_1__* data_next; int /*<<< orphan*/  d_seq_nr; struct pblk_line* data_line; } ;
struct pblk_line {void* type; scalar_t__ seq_nr; } ;
struct pblk {int /*<<< orphan*/  rl; int /*<<< orphan*/  lm; struct pblk_line_mgmt l_mg; } ;
struct TYPE_2__ {void* type; scalar_t__ seq_nr; } ;

/* Variables and functions */
 void* PBLK_LINETYPE_DATA ; 
 scalar_t__ FUNC0 (struct pblk*,struct pblk_line*) ; 
 scalar_t__ FUNC1 (struct pblk*,struct pblk_line*) ; 
 void* FUNC2 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*,struct pblk_line*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,struct pblk_line*,int /*<<< orphan*/ *) ; 
 struct pblk_line* FUNC5 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk_line*,struct pblk_line_mgmt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct pblk_line*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct pblk_line *FUNC11(struct pblk *pblk)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct pblk_line *line;

	FUNC9(&l_mg->free_lock);
	line = FUNC2(pblk);
	if (!line) {
		FUNC10(&l_mg->free_lock);
		return NULL;
	}

	line->seq_nr = l_mg->d_seq_nr++;
	line->type = PBLK_LINETYPE_DATA;
	l_mg->data_line = line;

	FUNC6(line, l_mg, &pblk->lm);

	/* Allocate next line for preparation */
	l_mg->data_next = FUNC2(pblk);
	if (!l_mg->data_next) {
		/* If we cannot get a new line, we need to stop the pipeline.
		 * Only allow as many writes in as we can store safely and then
		 * fail gracefully
		 */
		FUNC8(pblk);

		l_mg->data_next = NULL;
	} else {
		l_mg->data_next->seq_nr = l_mg->d_seq_nr++;
		l_mg->data_next->type = PBLK_LINETYPE_DATA;
	}
	FUNC10(&l_mg->free_lock);

	if (FUNC0(pblk, line))
		return NULL;

	if (FUNC1(pblk, line)) {
		line = FUNC5(pblk, line);
		if (!line)
			return NULL;
	}

retry_setup:
	if (!FUNC4(pblk, line, NULL)) {
		line = FUNC5(pblk, line);
		if (!line)
			return NULL;

		goto retry_setup;
	}

	if (!FUNC3(pblk, line, 1)) {
		line = FUNC5(pblk, line);
		if (!line)
			return NULL;

		goto retry_setup;
	}

	FUNC7(&pblk->rl, line, true);

	return line;
}