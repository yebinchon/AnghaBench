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
struct pblk_line_mgmt {int nr_lines; } ;
struct pblk_line {int dummy; } ;
struct pblk {struct pblk_line* lines; struct pblk_line* luns; struct pblk_line_mgmt l_mg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk_line_mgmt*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*) ; 

__attribute__((used)) static void FUNC4(struct pblk *pblk)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct pblk_line *line;
	int i;

	for (i = 0; i < l_mg->nr_lines; i++) {
		line = &pblk->lines[i];

		FUNC1(line);
		FUNC2(l_mg, line);
	}

	FUNC3(pblk);

	FUNC0(pblk->luns);
	FUNC0(pblk->lines);
}