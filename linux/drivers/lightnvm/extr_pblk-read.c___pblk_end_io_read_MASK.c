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
struct pblk_g_ctx {unsigned long start_time; int /*<<< orphan*/  lba; } ;
struct pblk {int /*<<< orphan*/  inflight_io; int /*<<< orphan*/  inflight_reads; int /*<<< orphan*/  sync_reads; TYPE_1__* disk; struct nvm_tgt_dev* dev; } ;
struct nvm_tgt_dev {int /*<<< orphan*/  q; } ;
struct nvm_rq {int /*<<< orphan*/  nr_ppas; scalar_t__ error; struct bio* bio; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  part0; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBLK_READ ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 struct pblk_g_ctx* FUNC5 (struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pblk*,struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pblk*,struct nvm_rq*) ; 

__attribute__((used)) static void FUNC10(struct pblk *pblk, struct nvm_rq *rqd,
			       bool put_line)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct pblk_g_ctx *r_ctx = FUNC5(rqd);
	struct bio *int_bio = rqd->bio;
	unsigned long start_time = r_ctx->start_time;

	FUNC4(dev->q, REQ_OP_READ, &pblk->disk->part0, start_time);

	if (rqd->error)
		FUNC7(pblk, rqd);

	FUNC8(pblk, rqd, r_ctx->lba);
	FUNC3(int_bio);

	if (put_line)
		FUNC9(pblk, rqd);

#ifdef CONFIG_NVM_PBLK_DEBUG
	atomic_long_add(rqd->nr_ppas, &pblk->sync_reads);
	atomic_long_sub(rqd->nr_ppas, &pblk->inflight_reads);
#endif

	FUNC6(pblk, rqd, PBLK_READ);
	FUNC0(&pblk->inflight_io);
}