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
struct request_queue {int dummy; } ;
struct pblk_w_ctx {unsigned long flags; scalar_t__ lba; int /*<<< orphan*/  ppa; } ;
struct pblk {TYPE_2__* disk; int /*<<< orphan*/  rl; int /*<<< orphan*/  req_writes; int /*<<< orphan*/  inflight_writes; int /*<<< orphan*/  user_wa; int /*<<< orphan*/  rwb; TYPE_1__* dev; } ;
struct bio {int bi_opf; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {int /*<<< orphan*/  part0; } ;
struct TYPE_3__ {struct request_queue* q; } ;

/* Variables and functions */
 int NVM_IO_DONE ; 
#define  NVM_IO_ERR 129 
#define  NVM_IO_REQUEUE 128 
 int /*<<< orphan*/  PBLK_EXPOSED_PAGE_SIZE ; 
 unsigned long PBLK_FLUSH_ENTRY ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int REQ_PREFLUSH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC11 (struct bio*) ; 
 int FUNC12 (struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct bio*,int,unsigned int*) ; 
 unsigned int FUNC16 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,void*,struct pblk_w_ctx,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC20 (struct pblk*) ; 
 scalar_t__ FUNC21 (int) ; 

void FUNC22(struct pblk *pblk, struct bio *bio,
				unsigned long flags)
{
	struct request_queue *q = pblk->dev->q;
	struct pblk_w_ctx w_ctx;
	sector_t lba = FUNC11(bio);
	unsigned long start_time = jiffies;
	unsigned int bpos, pos;
	int nr_entries = FUNC12(bio);
	int i, ret;

	FUNC9(q, REQ_OP_WRITE, FUNC7(bio),
			      &pblk->disk->part0);

	/* Update the write buffer head (mem) with the entries that we can
	 * write. The write in itself cannot fail, so there is no need to
	 * rollback from here on.
	 */
retry:
	ret = FUNC15(&pblk->rwb, bio, nr_entries, &bpos);
	switch (ret) {
	case NVM_IO_REQUEUE:
		FUNC10();
		goto retry;
	case NVM_IO_ERR:
		FUNC13(pblk);
		FUNC6(bio);
		goto out;
	}

	FUNC14(&w_ctx.ppa);
	w_ctx.flags = flags;
	if (bio->bi_opf & REQ_PREFLUSH) {
		w_ctx.flags |= PBLK_FLUSH_ENTRY;
		FUNC19(pblk);
	}

	if (FUNC21(!FUNC5(bio)))
		goto out;

	for (i = 0; i < nr_entries; i++) {
		void *data = FUNC3(bio);

		w_ctx.lba = lba + i;

		pos = FUNC16(&pblk->rwb, bpos + i);
		FUNC17(&pblk->rwb, data, w_ctx, pos);

		FUNC2(bio, PBLK_EXPOSED_PAGE_SIZE);
	}

	FUNC0(nr_entries, &pblk->user_wa);

#ifdef CONFIG_NVM_PBLK_DEBUG
	atomic_long_add(nr_entries, &pblk->inflight_writes);
	atomic_long_add(nr_entries, &pblk->req_writes);
#endif

	FUNC18(&pblk->rl, nr_entries);

out:
	FUNC8(q, REQ_OP_WRITE, &pblk->disk->part0, start_time);
	FUNC20(pblk);

	if (ret == NVM_IO_DONE)
		FUNC4(bio);
}