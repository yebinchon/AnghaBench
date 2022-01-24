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
struct pblk_line_mgmt {int /*<<< orphan*/  free_lock; struct pblk_line* data_line; } ;
struct pblk_line {int left_msecs; } ;
struct pblk {struct pblk_line_mgmt l_mg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pblk*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*,struct pblk_line*) ; 
 int FUNC2 (struct pblk*,struct pblk_line*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct pblk *pblk)
{
	struct pblk_line *line;
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	int left_msecs;
	int ret = 0;

	FUNC3(&l_mg->free_lock);
	line = l_mg->data_line;
	left_msecs = line->left_msecs;
	FUNC4(&l_mg->free_lock);

	ret = FUNC2(pblk, line, left_msecs);
	if (ret) {
		FUNC0(pblk, "tear down padding failed (%d)\n", ret);
		return ret;
	}

	FUNC1(pblk, line);
	return ret;
}