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
struct pblk_w_ctx {scalar_t__ lba; int /*<<< orphan*/  ppa; int /*<<< orphan*/  flags; } ;
struct pblk_gc_rq {int secs_to_gc; int nr_secs; scalar_t__* lba_list; int /*<<< orphan*/ * paddr_list; int /*<<< orphan*/  line; void* data; } ;
struct pblk {int /*<<< orphan*/  recov_gc_writes; int /*<<< orphan*/  inflight_writes; int /*<<< orphan*/  gc_wa; int /*<<< orphan*/  rwb; } ;

/* Variables and functions */
 scalar_t__ ADDR_EMPTY ; 
 int NVM_IO_OK ; 
 int /*<<< orphan*/  PBLK_EXPOSED_PAGE_SIZE ; 
 int /*<<< orphan*/  PBLK_IOTYPE_GC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,unsigned int*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,struct pblk_w_ctx,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*) ; 

int FUNC9(struct pblk *pblk, struct pblk_gc_rq *gc_rq)
{
	struct pblk_w_ctx w_ctx;
	unsigned int bpos, pos;
	void *data = gc_rq->data;
	int i, valid_entries;

	/* Update the write buffer head (mem) with the entries that we can
	 * write. The write in itself cannot fail, so there is no need to
	 * rollback from here on.
	 */
retry:
	if (!FUNC5(&pblk->rwb, gc_rq->secs_to_gc, &bpos)) {
		FUNC3();
		goto retry;
	}

	w_ctx.flags = PBLK_IOTYPE_GC;
	FUNC4(&w_ctx.ppa);

	for (i = 0, valid_entries = 0; i < gc_rq->nr_secs; i++) {
		if (gc_rq->lba_list[i] == ADDR_EMPTY)
			continue;

		w_ctx.lba = gc_rq->lba_list[i];

		pos = FUNC6(&pblk->rwb, bpos + valid_entries);
		FUNC7(&pblk->rwb, data, w_ctx, gc_rq->line,
						gc_rq->paddr_list[i], pos);

		data += PBLK_EXPOSED_PAGE_SIZE;
		valid_entries++;
	}

	FUNC0(gc_rq->secs_to_gc != valid_entries,
					"pblk: inconsistent GC write\n");

	FUNC1(valid_entries, &pblk->gc_wa);

#ifdef CONFIG_NVM_PBLK_DEBUG
	atomic_long_add(valid_entries, &pblk->inflight_writes);
	atomic_long_add(valid_entries, &pblk->recov_gc_writes);
#endif

	FUNC8(pblk);
	return NVM_IO_OK;
}