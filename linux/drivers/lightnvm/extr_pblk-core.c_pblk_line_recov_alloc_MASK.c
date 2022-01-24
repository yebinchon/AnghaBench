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
struct pblk_line_mgmt {int /*<<< orphan*/  free_lock; int /*<<< orphan*/  free_list; struct pblk_line* data_line; } ;
struct pblk_line {int /*<<< orphan*/  list; } ;
struct pblk {int /*<<< orphan*/  rl; struct pblk_line_mgmt l_mg; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*,struct pblk_line*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct pblk_line*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct pblk *pblk, struct pblk_line *line)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	int ret;

	FUNC6(&l_mg->free_lock);
	l_mg->data_line = line;
	FUNC1(&line->list);

	ret = FUNC4(pblk, line);
	if (ret) {
		FUNC0(&line->list, &l_mg->free_list);
		FUNC7(&l_mg->free_lock);
		return ret;
	}
	FUNC7(&l_mg->free_lock);

	ret = FUNC2(pblk, line);
	if (ret)
		goto fail;

	if (!FUNC3(pblk, line, 0)) {
		ret = -EINTR;
		goto fail;
	}

	FUNC5(&pblk->rl, line, true);
	return 0;

fail:
	FUNC6(&l_mg->free_lock);
	FUNC0(&line->list, &l_mg->free_list);
	FUNC7(&l_mg->free_lock);

	return ret;
}