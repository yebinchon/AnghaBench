#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  blk; } ;
struct ppa_addr {TYPE_2__ a; } ;
struct pblk_line_meta {int blk_per_line; } ;
struct pblk_line {int /*<<< orphan*/  id; int /*<<< orphan*/  lock; int /*<<< orphan*/  erase_bitmap; int /*<<< orphan*/  left_eblks; } ;
struct pblk {TYPE_1__* luns; struct pblk_line_meta lm; } ;
struct TYPE_3__ {struct ppa_addr bppa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct pblk*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

int FUNC8(struct pblk *pblk, struct pblk_line *line)
{
	struct pblk_line_meta *lm = &pblk->lm;
	struct ppa_addr ppa;
	int ret, bit = -1;

	/* Erase only good blocks, one at a time */
	do {
		FUNC5(&line->lock);
		bit = FUNC2(line->erase_bitmap, lm->blk_per_line,
								bit + 1);
		if (bit >= lm->blk_per_line) {
			FUNC6(&line->lock);
			break;
		}

		ppa = pblk->luns[bit].bppa; /* set ch and lun */
		ppa.a.blk = line->id;

		FUNC1(&line->left_eblks);
		FUNC0(FUNC7(bit, line->erase_bitmap));
		FUNC6(&line->lock);

		ret = FUNC3(pblk, ppa);
		if (ret) {
			FUNC4(pblk, "failed to erase line %d\n", line->id);
			return ret;
		}
	} while (1);

	return 0;
}