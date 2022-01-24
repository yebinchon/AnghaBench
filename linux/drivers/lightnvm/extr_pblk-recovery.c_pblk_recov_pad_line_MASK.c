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
typedef  size_t u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_sec_meta {int /*<<< orphan*/  lba; } ;
struct pblk_pad_rq {int /*<<< orphan*/  wait; int /*<<< orphan*/  ref; struct pblk* pblk; } ;
struct pblk_line {size_t cur_sec; int left_msecs; int id; int /*<<< orphan*/  blk_bitmap; int /*<<< orphan*/  lock; TYPE_1__* emeta; } ;
struct pblk {int min_write_pgs; int /*<<< orphan*/  max_write_pgs; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int /*<<< orphan*/  csecs; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_rq {int is_seq; int nr_ppas; void* meta_list; struct pblk_pad_rq* private; int /*<<< orphan*/  end_io; int /*<<< orphan*/  opcode; int /*<<< orphan*/ * bio; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EMPTY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVM_OP_PWRITE ; 
 int /*<<< orphan*/  PBLK_WRITE_INT ; 
 struct ppa_addr FUNC0 (struct pblk*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct pblk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk_pad_rq*) ; 
 struct pblk_pad_rq* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ppa_addr* FUNC10 (struct nvm_rq*) ; 
 size_t FUNC11 (struct pblk*,struct pblk_line*,int) ; 
 struct nvm_rq* FUNC12 (struct pblk*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct pblk*,struct nvm_rq*) ; 
 int FUNC14 (struct pblk*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct pblk*,struct ppa_addr) ; 
 int /*<<< orphan*/  pblk_end_io_recov ; 
 int /*<<< orphan*/  FUNC16 (struct pblk*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ) ; 
 struct pblk_sec_meta* FUNC18 (struct pblk*,void*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC20 (struct pblk*,struct ppa_addr) ; 
 int FUNC21 (struct nvm_geo*,struct ppa_addr) ; 
 int /*<<< orphan*/  pblk_recov_complete ; 
 int FUNC22 (struct pblk*,struct nvm_rq*,void*) ; 
 int /*<<< orphan*/  FUNC23 (struct pblk*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (void*) ; 
 void* FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(struct pblk *pblk, struct pblk_line *line,
			       int left_ppas)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	void *meta_list;
	struct pblk_pad_rq *pad_rq;
	struct nvm_rq *rqd;
	struct ppa_addr *ppa_list;
	void *data;
	__le64 *lba_list = FUNC3(pblk, line->emeta->buf);
	u64 w_ptr = line->cur_sec;
	int left_line_ppas, rq_ppas;
	int i, j;
	int ret = 0;

	FUNC24(&line->lock);
	left_line_ppas = line->left_msecs;
	FUNC25(&line->lock);

	pad_rq = FUNC6(sizeof(struct pblk_pad_rq), GFP_KERNEL);
	if (!pad_rq)
		return -ENOMEM;

	data = FUNC28(FUNC1(pblk->max_write_pgs, geo->csecs));
	if (!data) {
		ret = -ENOMEM;
		goto free_rq;
	}

	pad_rq->pblk = pblk;
	FUNC4(&pad_rq->wait);
	FUNC8(&pad_rq->ref);

next_pad_rq:
	rq_ppas = FUNC14(pblk, left_ppas, 0, false);
	if (rq_ppas < pblk->min_write_pgs) {
		FUNC16(pblk, "corrupted pad line %d\n", line->id);
		goto fail_complete;
	}

	rqd = FUNC12(pblk, PBLK_WRITE_INT);

	ret = FUNC13(pblk, rqd);
	if (ret) {
		FUNC17(pblk, rqd, PBLK_WRITE_INT);
		goto fail_complete;
	}

	rqd->bio = NULL;
	rqd->opcode = NVM_OP_PWRITE;
	rqd->is_seq = 1;
	rqd->nr_ppas = rq_ppas;
	rqd->end_io = pblk_end_io_recov;
	rqd->private = pad_rq;

	ppa_list = FUNC10(rqd);
	meta_list = rqd->meta_list;

	for (i = 0; i < rqd->nr_ppas; ) {
		struct ppa_addr ppa;
		int pos;

		w_ptr = FUNC11(pblk, line, pblk->min_write_pgs);
		ppa = FUNC0(pblk, w_ptr, line->id);
		pos = FUNC21(geo, ppa);

		while (FUNC26(pos, line->blk_bitmap)) {
			w_ptr += pblk->min_write_pgs;
			ppa = FUNC0(pblk, w_ptr, line->id);
			pos = FUNC21(geo, ppa);
		}

		for (j = 0; j < pblk->min_write_pgs; j++, i++, w_ptr++) {
			struct ppa_addr dev_ppa;
			struct pblk_sec_meta *meta;
			__le64 addr_empty = FUNC2(ADDR_EMPTY);

			dev_ppa = FUNC0(pblk, w_ptr, line->id);

			FUNC20(pblk, dev_ppa);
			lba_list[w_ptr] = addr_empty;
			meta = FUNC18(pblk, meta_list, i);
			meta->lba = addr_empty;
			ppa_list[i] = dev_ppa;
		}
	}

	FUNC7(&pad_rq->ref);
	FUNC15(pblk, ppa_list[0]);

	ret = FUNC22(pblk, rqd, data);
	if (ret) {
		FUNC16(pblk, "I/O submission failed: %d\n", ret);
		FUNC23(pblk, ppa_list[0]);
		FUNC9(&pad_rq->ref, pblk_recov_complete);
		FUNC17(pblk, rqd, PBLK_WRITE_INT);
		goto fail_complete;
	}

	left_line_ppas -= rq_ppas;
	left_ppas -= rq_ppas;
	if (left_ppas && left_line_ppas)
		goto next_pad_rq;

fail_complete:
	FUNC9(&pad_rq->ref, pblk_recov_complete);
	FUNC29(&pad_rq->wait);

	if (!FUNC19(line))
		FUNC16(pblk, "corrupted padded line: %d\n", line->id);

	FUNC27(data);
free_rq:
	FUNC5(pad_rq);
	return ret;
}