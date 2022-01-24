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
struct pblk_line_mgmt {int /*<<< orphan*/  bitmap_pool; } ;
struct pblk_line {int /*<<< orphan*/  invalid_bitmap; int /*<<< orphan*/  map_bitmap; struct pblk* pblk; } ;
struct pblk {struct pblk_line_mgmt l_mg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk_line*) ; 

void FUNC2(struct pblk_line *line)
{
	struct pblk *pblk = line->pblk;
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;

	FUNC0(line->map_bitmap, l_mg->bitmap_pool);
	FUNC0(line->invalid_bitmap, l_mg->bitmap_pool);

	FUNC1(line);
}