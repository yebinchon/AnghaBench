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
typedef  scalar_t__ u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_sec_meta {int /*<<< orphan*/  lba; } ;
struct pblk_recov_alloc {void* dma_meta_list; void* dma_ppa_list; void* data; struct nvm_rq* rqd; void* meta_list; struct ppa_addr* ppa_list; } ;
struct pblk_line_meta {scalar_t__ smeta_sec; } ;
struct pblk_line {int /*<<< orphan*/  nr_valid_lbas; int /*<<< orphan*/  id; int /*<<< orphan*/  blk_bitmap; TYPE_1__* emeta; } ;
struct pblk {int min_write_pgs; scalar_t__ capacity; int /*<<< orphan*/  inflight_io; struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_rq {int nr_ppas; int is_seq; scalar_t__ error; void* dma_meta_list; void* dma_ppa_list; struct ppa_addr* ppa_list; void* meta_list; int /*<<< orphan*/  opcode; int /*<<< orphan*/ * bio; } ;
typedef  void* dma_addr_t ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 scalar_t__ ADDR_EMPTY ; 
 int EINTR ; 
 int /*<<< orphan*/  NVM_OP_PREAD ; 
 scalar_t__ NVM_RSP_WARN_HIGHECC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ppa_addr FUNC1 (struct pblk*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (struct pblk*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nvm_rq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ppa_addr* FUNC7 (struct nvm_rq*) ; 
 int FUNC8 (struct pblk*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pblk*,char*,int) ; 
 int /*<<< orphan*/  pblk_g_rq_size ; 
 struct pblk_sec_meta* FUNC10 (struct pblk*,void*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct pblk*,struct nvm_rq*) ; 
 scalar_t__ FUNC12 (struct pblk*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pblk_line*) ; 
 scalar_t__ FUNC14 (struct pblk*,struct pblk_line*) ; 
 scalar_t__ FUNC15 (struct pblk*,struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC16 (struct pblk*,struct nvm_rq*) ; 
 int FUNC17 (struct pblk*,struct pblk_line*) ; 
 int FUNC18 (struct nvm_geo*,struct ppa_addr) ; 
 int FUNC19 (struct pblk*,struct pblk_line*,int) ; 
 scalar_t__ FUNC20 (struct pblk*,struct pblk_line*) ; 
 int FUNC21 (struct pblk*,struct nvm_rq*,void*) ; 
 int /*<<< orphan*/  FUNC22 (struct pblk*,scalar_t__,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC23 (struct pblk*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct pblk *pblk, struct pblk_line *line,
			       struct pblk_recov_alloc p)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct pblk_line_meta *lm = &pblk->lm;
	struct nvm_geo *geo = &dev->geo;
	struct ppa_addr *ppa_list;
	void *meta_list;
	struct nvm_rq *rqd;
	void *data;
	dma_addr_t dma_ppa_list, dma_meta_list;
	__le64 *lba_list;
	u64 paddr = FUNC14(pblk, line) + lm->smeta_sec;
	bool padded = false;
	int rq_ppas;
	int i, j;
	int ret;
	u64 left_ppas = FUNC20(pblk, line) - lm->smeta_sec;

	if (FUNC15(pblk, line))
		FUNC23(pblk, "recovering unbalanced line (%d)\n", line->id);

	ppa_list = p.ppa_list;
	meta_list = p.meta_list;
	rqd = p.rqd;
	data = p.data;
	dma_ppa_list = p.dma_ppa_list;
	dma_meta_list = p.dma_meta_list;

	lba_list = FUNC4(pblk, line->emeta->buf);

next_rq:
	FUNC6(rqd, 0, pblk_g_rq_size);

	rq_ppas = FUNC8(pblk, left_ppas, 0, false);
	if (!rq_ppas)
		rq_ppas = pblk->min_write_pgs;

retry_rq:
	rqd->bio = NULL;
	rqd->opcode = NVM_OP_PREAD;
	rqd->meta_list = meta_list;
	rqd->nr_ppas = rq_ppas;
	rqd->ppa_list = ppa_list;
	rqd->dma_ppa_list = dma_ppa_list;
	rqd->dma_meta_list = dma_meta_list;
	ppa_list = FUNC7(rqd);

	if (FUNC12(pblk, rq_ppas))
		rqd->is_seq = 1;

	for (i = 0; i < rqd->nr_ppas; ) {
		struct ppa_addr ppa;
		int pos;

		ppa = FUNC1(pblk, paddr, line->id);
		pos = FUNC18(geo, ppa);

		while (FUNC24(pos, line->blk_bitmap)) {
			paddr += pblk->min_write_pgs;
			ppa = FUNC1(pblk, paddr, line->id);
			pos = FUNC18(geo, ppa);
		}

		for (j = 0; j < pblk->min_write_pgs; j++, i++)
			ppa_list[i] =
				FUNC1(pblk, paddr + j, line->id);
	}

	ret = FUNC21(pblk, rqd, data);
	if (ret) {
		FUNC9(pblk, "I/O submission failed: %d\n", ret);
		return ret;
	}

	FUNC2(&pblk->inflight_io);

	/* If a read fails, do a best effort by padding the line and retrying */
	if (rqd->error && rqd->error != NVM_RSP_WARN_HIGHECC) {
		int pad_distance, ret;

		if (padded) {
			FUNC16(pblk, rqd);
			return -EINTR;
		}

		pad_distance = FUNC17(pblk, line);
		ret = FUNC19(pblk, line, pad_distance);
		if (ret) {
			return ret;
		}

		padded = true;
		goto retry_rq;
	}

	FUNC11(pblk, rqd);

	for (i = 0; i < rqd->nr_ppas; i++) {
		struct pblk_sec_meta *meta = FUNC10(pblk, meta_list, i);
		u64 lba = FUNC5(meta->lba);

		lba_list[paddr++] = FUNC3(lba);

		if (lba == ADDR_EMPTY || lba >= pblk->capacity)
			continue;

		line->nr_valid_lbas++;
		FUNC22(pblk, lba, ppa_list[i]);
	}

	left_ppas -= rq_ppas;
	if (left_ppas > 0)
		goto next_rq;

#ifdef CONFIG_NVM_PBLK_DEBUG
	WARN_ON(padded && !pblk_line_is_full(line));
#endif

	return 0;
}