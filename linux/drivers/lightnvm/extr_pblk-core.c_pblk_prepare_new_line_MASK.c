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
struct pblk_lun {int /*<<< orphan*/  bppa; } ;
struct pblk_line_meta {int blk_per_line; } ;
struct pblk_line {int /*<<< orphan*/  erase_bitmap; TYPE_1__* chks; int /*<<< orphan*/  blk_in_line; } ;
struct pblk {struct pblk_lun* luns; struct nvm_tgt_dev* dev; struct pblk_line_meta lm; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 int NVM_CHK_ST_FREE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nvm_geo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pblk *pblk, struct pblk_line *line)
{
	struct pblk_line_meta *lm = &pblk->lm;
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	int blk_to_erase = FUNC0(&line->blk_in_line);
	int i;

	for (i = 0; i < lm->blk_per_line; i++) {
		struct pblk_lun *rlun = &pblk->luns[i];
		int pos = FUNC1(geo, rlun->bppa);
		int state = line->chks[pos].state;

		/* Free chunks should not be erased */
		if (state & NVM_CHK_ST_FREE) {
			FUNC2(FUNC1(geo, rlun->bppa),
							line->erase_bitmap);
			blk_to_erase--;
		}
	}

	return blk_to_erase;
}