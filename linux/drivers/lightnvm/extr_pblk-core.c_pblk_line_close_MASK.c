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
struct pblk_line_mgmt {int /*<<< orphan*/  gc_lock; int /*<<< orphan*/  bitmap_pool; int /*<<< orphan*/  free_lock; int /*<<< orphan*/  meta_bitmap; } ;
struct pblk_line_meta {int blk_per_line; int /*<<< orphan*/  sec_per_line; } ;
struct pblk_line {scalar_t__ state; int /*<<< orphan*/  id; int /*<<< orphan*/  lock; TYPE_1__* chks; int /*<<< orphan*/ * emeta; int /*<<< orphan*/ * smeta; int /*<<< orphan*/ * map_bitmap; int /*<<< orphan*/  list; int /*<<< orphan*/  meta_line; } ;
struct pblk {struct pblk_lun* luns; struct pblk_line_mgmt l_mg; struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 int NVM_CHK_ST_CLOSED ; 
 int NVM_CHK_ST_OFFLINE ; 
 scalar_t__ PBLK_LINESTATE_CLOSED ; 
 scalar_t__ PBLK_LINESTATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*) ; 
 struct list_head* FUNC6 (struct pblk*,struct pblk_line*) ; 
 int FUNC7 (struct nvm_geo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC12(struct pblk *pblk, struct pblk_line *line)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	struct pblk_line_meta *lm = &pblk->lm;
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct list_head *move_list;
	int i;

#ifdef CONFIG_NVM_PBLK_DEBUG
	WARN(!bitmap_full(line->map_bitmap, lm->sec_per_line),
				"pblk: corrupt closed line %d\n", line->id);
#endif

	FUNC8(&l_mg->free_lock);
	FUNC1(!FUNC10(line->meta_line, &l_mg->meta_bitmap));
	FUNC9(&l_mg->free_lock);

	FUNC8(&l_mg->gc_lock);
	FUNC8(&line->lock);
	FUNC1(line->state != PBLK_LINESTATE_OPEN);
	line->state = PBLK_LINESTATE_CLOSED;
	move_list = FUNC6(pblk, line);
	FUNC3(&line->list, move_list);

	FUNC4(line->map_bitmap, l_mg->bitmap_pool);
	line->map_bitmap = NULL;
	line->smeta = NULL;
	line->emeta = NULL;

	for (i = 0; i < lm->blk_per_line; i++) {
		struct pblk_lun *rlun = &pblk->luns[i];
		int pos = FUNC7(geo, rlun->bppa);
		int state = line->chks[pos].state;

		if (!(state & NVM_CHK_ST_OFFLINE))
			state = NVM_CHK_ST_CLOSED;
	}

	FUNC9(&line->lock);
	FUNC9(&l_mg->gc_lock);

	FUNC11(FUNC5(pblk), line->id,
					line->state);
}