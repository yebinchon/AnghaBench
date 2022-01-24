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
struct pblk_line_mgmt {int /*<<< orphan*/  bitmap_cache; int /*<<< orphan*/  bitmap_pool; TYPE_1__** eline_meta; TYPE_1__** sline_meta; TYPE_1__* vsc_list; TYPE_1__* bb_aux; TYPE_1__* bb_template; } ;
struct pblk {struct pblk_line_mgmt l_mg; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int PBLK_DATA_LINES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pblk *pblk)
{
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	int i;

	FUNC0(l_mg->bb_template);
	FUNC0(l_mg->bb_aux);
	FUNC0(l_mg->vsc_list);

	for (i = 0; i < PBLK_DATA_LINES; i++) {
		FUNC0(l_mg->sline_meta[i]);
		FUNC2(l_mg->eline_meta[i]->buf);
		FUNC0(l_mg->eline_meta[i]);
	}

	FUNC3(l_mg->bitmap_pool);
	FUNC1(l_mg->bitmap_cache);
}