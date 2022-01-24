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
struct pblk_gc_rq {int nr_secs; int secs_to_gc; int /*<<< orphan*/ * lba_list; int /*<<< orphan*/  data; int /*<<< orphan*/ * paddr_list; int /*<<< orphan*/  line; } ;
struct pblk {int /*<<< orphan*/  inflight_reads; int /*<<< orphan*/  recov_gc_reads; int /*<<< orphan*/  sync_reads; int /*<<< orphan*/  read_failed_gc; int /*<<< orphan*/  inflight_io; } ;
struct nvm_rq {int nr_ppas; scalar_t__ error; int /*<<< orphan*/  opcode; int /*<<< orphan*/ * ppa_list; int /*<<< orphan*/  ppa_addr; } ;

/* Variables and functions */
 int EIO ; 
 int NVM_IO_OK ; 
 int /*<<< orphan*/  NVM_OP_PREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nvm_rq*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct pblk*,struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk*,struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct pblk*,struct nvm_rq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct pblk *pblk, struct pblk_gc_rq *gc_rq)
{
	struct nvm_rq rqd;
	int ret = NVM_IO_OK;

	FUNC4(&rqd, 0, sizeof(struct nvm_rq));

	ret = FUNC5(pblk, &rqd);
	if (ret)
		return ret;

	if (gc_rq->nr_secs > 1) {
		gc_rq->secs_to_gc = FUNC10(pblk, &rqd, gc_rq->line,
							gc_rq->lba_list,
							gc_rq->paddr_list,
							gc_rq->nr_secs);
		if (gc_rq->secs_to_gc == 1)
			rqd.ppa_addr = rqd.ppa_list[0];
	} else {
		gc_rq->secs_to_gc = FUNC11(pblk, &rqd, gc_rq->line,
							gc_rq->lba_list[0],
							gc_rq->paddr_list[0]);
	}

	if (!(gc_rq->secs_to_gc))
		goto out;

	rqd.opcode = NVM_OP_PREAD;
	rqd.nr_ppas = gc_rq->secs_to_gc;

	if (FUNC9(pblk, &rqd, gc_rq->data)) {
		ret = -EIO;
		goto err_free_dma;
	}

	FUNC8(pblk, &rqd, gc_rq->lba_list, gc_rq->nr_secs);

	FUNC0(&pblk->inflight_io);

	if (rqd.error) {
		FUNC2(&pblk->read_failed_gc);
#ifdef CONFIG_NVM_PBLK_DEBUG
		pblk_print_failed_rqd(pblk, &rqd, rqd.error);
#endif
	}

#ifdef CONFIG_NVM_PBLK_DEBUG
	atomic_long_add(gc_rq->secs_to_gc, &pblk->sync_reads);
	atomic_long_add(gc_rq->secs_to_gc, &pblk->recov_gc_reads);
	atomic_long_sub(gc_rq->secs_to_gc, &pblk->inflight_reads);
#endif

out:
	FUNC6(pblk, &rqd);
	return ret;

err_free_dma:
	FUNC6(pblk, &rqd);
	return ret;
}