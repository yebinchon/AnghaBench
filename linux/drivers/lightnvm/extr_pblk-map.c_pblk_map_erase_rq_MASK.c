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
struct TYPE_4__ {int /*<<< orphan*/  blk; scalar_t__ reserved; } ;
struct ppa_addr {TYPE_2__ a; } ;
struct pblk_line_meta {int blk_per_line; } ;
struct pblk_line {int /*<<< orphan*/  id; int /*<<< orphan*/  left_eblks; int /*<<< orphan*/  erase_bitmap; int /*<<< orphan*/  lock; int /*<<< orphan*/  blk_bitmap; } ;
struct pblk {int min_write_pgs; TYPE_1__* luns; struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_rq {int nr_ppas; } ;
struct TYPE_3__ {struct ppa_addr bppa; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 struct ppa_addr* FUNC3 (struct nvm_rq*) ; 
 void* FUNC4 (struct pblk*,void*,int) ; 
 void* FUNC5 (struct pblk*,struct nvm_rq*) ; 
 struct pblk_line* FUNC6 (struct pblk*) ; 
 struct pblk_line* FUNC7 (struct pblk*) ; 
 int FUNC8 (struct pblk*,unsigned int,struct ppa_addr*,unsigned long*,void*,unsigned int) ; 
 int FUNC9 (struct pblk*,struct nvm_rq*,unsigned int,unsigned long*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ppa_addr) ; 
 int FUNC11 (struct nvm_geo*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(struct pblk *pblk, struct nvm_rq *rqd,
		       unsigned int sentry, unsigned long *lun_bitmap,
		       unsigned int valid_secs, struct ppa_addr *erase_ppa)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	struct pblk_line_meta *lm = &pblk->lm;
	void *meta_list = FUNC5(pblk, rqd);
	void *meta_buffer;
	struct ppa_addr *ppa_list = FUNC3(rqd);
	struct pblk_line *e_line, *d_line;
	unsigned int map_secs;
	int min = pblk->min_write_pgs;
	int i, erase_lun;
	int ret;


	for (i = 0; i < rqd->nr_ppas; i += min) {
		map_secs = (i + min > valid_secs) ? (valid_secs % min) : min;
		meta_buffer = FUNC4(pblk, meta_list, i);

		ret = FUNC8(pblk, sentry + i, &ppa_list[i],
					lun_bitmap, meta_buffer, map_secs);
		if (ret)
			return ret;

		erase_lun = FUNC11(geo, ppa_list[i]);

		/* line can change after page map. We might also be writing the
		 * last line.
		 */
		e_line = FUNC7(pblk);
		if (!e_line)
			return FUNC9(pblk, rqd, sentry, lun_bitmap,
							valid_secs, i + min);

		FUNC13(&e_line->lock);
		if (!FUNC15(erase_lun, e_line->erase_bitmap)) {
			FUNC12(erase_lun, e_line->erase_bitmap);
			FUNC0(&e_line->left_eblks);

			*erase_ppa = ppa_list[i];
			erase_ppa->a.blk = e_line->id;
			erase_ppa->a.reserved = 0;

			FUNC14(&e_line->lock);

			/* Avoid evaluating e_line->left_eblks */
			return FUNC9(pblk, rqd, sentry, lun_bitmap,
							valid_secs, i + min);
		}
		FUNC14(&e_line->lock);
	}

	d_line = FUNC6(pblk);

	/* line can change after page map. We might also be writing the
	 * last line.
	 */
	e_line = FUNC7(pblk);
	if (!e_line)
		return -ENOSPC;

	/* Erase blocks that are bad in this line but might not be in next */
	if (FUNC16(FUNC10(*erase_ppa)) &&
			FUNC1(d_line->blk_bitmap, lm->blk_per_line)) {
		int bit = -1;

retry:
		bit = FUNC2(d_line->blk_bitmap,
						lm->blk_per_line, bit + 1);
		if (bit >= lm->blk_per_line)
			return 0;

		FUNC13(&e_line->lock);
		if (FUNC15(bit, e_line->erase_bitmap)) {
			FUNC14(&e_line->lock);
			goto retry;
		}
		FUNC14(&e_line->lock);

		FUNC12(bit, e_line->erase_bitmap);
		FUNC0(&e_line->left_eblks);
		*erase_ppa = pblk->luns[bit].bppa; /* set ch and lun */
		erase_ppa->a.blk = e_line->id;
	}

	return 0;
}