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
typedef  scalar_t__ u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line_meta {int* emeta_sec; } ;
struct pblk_line {int id; int /*<<< orphan*/  blk_bitmap; scalar_t__ emeta_ssec; } ;
struct pblk {int min_write_pgs; int /*<<< orphan*/  inflight_io; struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int csecs; } ;
struct nvm_tgt_dev {int /*<<< orphan*/  parent; struct nvm_geo geo; } ;
struct nvm_rq {int dma_meta_list; int dma_ppa_list; int nr_ppas; int is_seq; scalar_t__ error; void* meta_list; int /*<<< orphan*/  opcode; void* ppa_list; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVM_OP_PREAD ; 
 scalar_t__ NVM_RSP_WARN_HIGHECC ; 
 struct ppa_addr FUNC0 (struct pblk*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvm_rq*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 struct ppa_addr* FUNC5 (struct nvm_rq*) ; 
 scalar_t__ FUNC6 (struct pblk*,scalar_t__) ; 
 int FUNC7 (struct pblk*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC9 (struct pblk*,char*,int) ; 
 scalar_t__ FUNC10 (struct pblk*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct pblk*,struct nvm_rq*) ; 
 int FUNC12 (struct nvm_geo*,struct ppa_addr) ; 
 int FUNC13 (struct pblk*,struct nvm_rq*,void*) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ) ; 

int FUNC15(struct pblk *pblk, struct pblk_line *line,
			 void *emeta_buf)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	struct pblk_line_meta *lm = &pblk->lm;
	void *ppa_list_buf, *meta_list;
	struct ppa_addr *ppa_list;
	struct nvm_rq rqd;
	u64 paddr = line->emeta_ssec;
	dma_addr_t dma_ppa_list, dma_meta_list;
	int min = pblk->min_write_pgs;
	int left_ppas = lm->emeta_sec[0];
	int line_id = line->id;
	int rq_ppas, rq_len;
	int i, j;
	int ret;

	meta_list = FUNC3(dev->parent, GFP_KERNEL,
							&dma_meta_list);
	if (!meta_list)
		return -ENOMEM;

	ppa_list_buf = meta_list + FUNC8(pblk);
	dma_ppa_list = dma_meta_list + FUNC8(pblk);

next_rq:
	FUNC2(&rqd, 0, sizeof(struct nvm_rq));

	rq_ppas = FUNC7(pblk, left_ppas, 0, false);
	rq_len = rq_ppas * geo->csecs;

	rqd.meta_list = meta_list;
	rqd.ppa_list = ppa_list_buf;
	rqd.dma_meta_list = dma_meta_list;
	rqd.dma_ppa_list = dma_ppa_list;
	rqd.opcode = NVM_OP_PREAD;
	rqd.nr_ppas = rq_ppas;
	ppa_list = FUNC5(&rqd);

	for (i = 0; i < rqd.nr_ppas; ) {
		struct ppa_addr ppa = FUNC0(pblk, paddr, line_id);
		int pos = FUNC12(geo, ppa);

		if (FUNC10(pblk, rq_ppas))
			rqd.is_seq = 1;

		while (FUNC14(pos, line->blk_bitmap)) {
			paddr += min;
			if (FUNC6(pblk, paddr)) {
				ret = -EINTR;
				goto free_rqd_dma;
			}

			ppa = FUNC0(pblk, paddr, line_id);
			pos = FUNC12(geo, ppa);
		}

		if (FUNC6(pblk, paddr + min)) {
			ret = -EINTR;
			goto free_rqd_dma;
		}

		for (j = 0; j < min; j++, i++, paddr++)
			ppa_list[i] = FUNC0(pblk, paddr, line_id);
	}

	ret = FUNC13(pblk, &rqd, emeta_buf);
	if (ret) {
		FUNC9(pblk, "emeta I/O submission failed: %d\n", ret);
		goto free_rqd_dma;
	}

	FUNC1(&pblk->inflight_io);

	if (rqd.error && rqd.error != NVM_RSP_WARN_HIGHECC) {
		FUNC11(pblk, &rqd);
		ret = -EIO;
		goto free_rqd_dma;
	}

	emeta_buf += rq_len;
	left_ppas -= rq_ppas;
	if (left_ppas)
		goto next_rq;

free_rqd_dma:
	FUNC4(dev->parent, rqd.meta_list, rqd.dma_meta_list);
	return ret;
}