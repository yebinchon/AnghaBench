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
typedef  int /*<<< orphan*/  u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line_mgmt {int /*<<< orphan*/  close_lock; } ;
struct pblk_line_meta {scalar_t__* emeta_len; } ;
struct pblk_line {int id; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; struct pblk_emeta* emeta; } ;
struct pblk_g_ctx {struct pblk_line* private; } ;
struct pblk_emeta {int mem; scalar_t__ buf; } ;
struct pblk {int min_write_pgs; struct pblk_line_meta lm; struct pblk_line_mgmt l_mg; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int csecs; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_rq {int nr_ppas; } ;

/* Variables and functions */
 int NVM_IO_OK ; 
 int /*<<< orphan*/  PBLK_WRITE_INT ; 
 int /*<<< orphan*/  FUNC0 (struct pblk*,struct pblk_line*,int) ; 
 struct ppa_addr FUNC1 (struct pblk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pblk_g_ctx* FUNC4 (struct nvm_rq*) ; 
 struct ppa_addr* FUNC5 (struct nvm_rq*) ; 
 struct nvm_rq* FUNC6 (struct pblk*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pblk*,struct nvm_rq*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*,struct pblk_line*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pblk*,struct ppa_addr) ; 
 int /*<<< orphan*/  pblk_end_io_write_meta ; 
 int /*<<< orphan*/  FUNC10 (struct pblk*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pblk*,struct nvm_rq*,void*) ; 
 int /*<<< orphan*/  FUNC13 (struct pblk*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct pblk *pblk, struct pblk_line *meta_line)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	struct pblk_line_mgmt *l_mg = &pblk->l_mg;
	struct pblk_line_meta *lm = &pblk->lm;
	struct pblk_emeta *emeta = meta_line->emeta;
	struct ppa_addr *ppa_list;
	struct pblk_g_ctx *m_ctx;
	struct nvm_rq *rqd;
	void *data;
	u64 paddr;
	int rq_ppas = pblk->min_write_pgs;
	int id = meta_line->id;
	int rq_len;
	int i, j;
	int ret;

	rqd = FUNC6(pblk, PBLK_WRITE_INT);

	m_ctx = FUNC4(rqd);
	m_ctx->private = meta_line;

	rq_len = rq_ppas * geo->csecs;
	data = ((void *)emeta->buf) + emeta->mem;

	ret = FUNC7(pblk, rqd, rq_ppas, pblk_end_io_write_meta);
	if (ret)
		goto fail_free_rqd;

	ppa_list = FUNC5(rqd);
	for (i = 0; i < rqd->nr_ppas; ) {
		FUNC14(&meta_line->lock);
		paddr = FUNC0(pblk, meta_line, rq_ppas);
		FUNC15(&meta_line->lock);
		for (j = 0; j < rq_ppas; j++, i++, paddr++)
			ppa_list[i] = FUNC1(pblk, paddr, id);
	}

	FUNC14(&l_mg->close_lock);
	emeta->mem += rq_len;
	if (emeta->mem >= lm->emeta_len[0])
		FUNC3(&meta_line->list);
	FUNC15(&l_mg->close_lock);

	FUNC9(pblk, ppa_list[0]);

	ret = FUNC12(pblk, rqd, data);
	if (ret) {
		FUNC10(pblk, "emeta I/O submission failed: %d\n", ret);
		goto fail_rollback;
	}

	return NVM_IO_OK;

fail_rollback:
	FUNC13(pblk, ppa_list[0]);
	FUNC14(&l_mg->close_lock);
	FUNC8(pblk, meta_line, rq_ppas);
	FUNC2(&meta_line->list, &meta_line->list);
	FUNC15(&l_mg->close_lock);
fail_free_rqd:
	FUNC11(pblk, rqd, PBLK_WRITE_INT);
	return ret;
}