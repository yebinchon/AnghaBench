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
struct request_queue {int dummy; } ;
struct pblk_g_ctx {struct bio* private; int /*<<< orphan*/  lba; int /*<<< orphan*/  start_time; } ;
struct pblk {int /*<<< orphan*/  inflight_io; TYPE_1__* disk; struct nvm_tgt_dev* dev; } ;
struct nvm_tgt_dev {struct request_queue* q; } ;
struct nvm_rq {unsigned int nr_ppas; int /*<<< orphan*/  error; int /*<<< orphan*/ * ppa_list; int /*<<< orphan*/  ppa_addr; struct bio* bio; int /*<<< orphan*/  (* end_io ) (struct nvm_rq*) ;struct pblk* private; int /*<<< orphan*/  opcode; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  part0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int NR_PHY_IN_LOG ; 
 int /*<<< orphan*/  NVM_OP_PREAD ; 
 int /*<<< orphan*/  PBLK_READ ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (struct pblk*,struct nvm_rq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct bio*) ; 
 struct bio* FUNC3 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 struct bio* FUNC7 (struct bio*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 struct pblk_g_ctx* FUNC10 (struct nvm_rq*) ; 
 struct nvm_rq* FUNC11 (struct pblk*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct pblk*,struct nvm_rq*) ; 
 int /*<<< orphan*/  pblk_bio_set ; 
 int /*<<< orphan*/  FUNC13 (struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC14 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct bio*) ; 
 unsigned int FUNC17 (struct bio*) ; 
 unsigned int FUNC18 (struct pblk*,struct nvm_rq*,struct bio*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct pblk*,struct nvm_rq*,struct bio*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC20 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ *) ; 

void FUNC21(struct pblk *pblk, struct bio *bio)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct request_queue *q = dev->q;
	sector_t blba = FUNC16(bio);
	unsigned int nr_secs = FUNC17(bio);
	bool from_cache;
	struct pblk_g_ctx *r_ctx;
	struct nvm_rq *rqd;
	struct bio *int_bio, *split_bio;

	FUNC9(q, REQ_OP_READ, FUNC6(bio),
			      &pblk->disk->part0);

	rqd = FUNC11(pblk, PBLK_READ);

	rqd->opcode = NVM_OP_PREAD;
	rqd->nr_ppas = nr_secs;
	rqd->private = pblk;
	rqd->end_io = pblk_end_io_read;

	r_ctx = FUNC10(rqd);
	r_ctx->start_time = jiffies;
	r_ctx->lba = blba;

	if (FUNC12(pblk, rqd)) {
		FUNC4(bio);
		FUNC15(pblk, rqd, PBLK_READ);
		return;
	}

	/* Clone read bio to deal internally with:
	 * -read errors when reading from drive
	 * -bio_advance() calls during cache reads
	 */
	int_bio = FUNC3(bio, GFP_KERNEL, &pblk_bio_set);

	if (nr_secs > 1)
		nr_secs = FUNC18(pblk, rqd, int_bio, blba,
						&from_cache);
	else
		FUNC19(pblk, rqd, int_bio, blba, &from_cache);

split_retry:
	r_ctx->private = bio; /* original bio */
	rqd->bio = int_bio; /* internal bio */

	if (from_cache && nr_secs == rqd->nr_ppas) {
		/* All data was read from cache, we can complete the IO. */
		FUNC14(bio, 0);
		FUNC1(&pblk->inflight_io);
		FUNC0(pblk, rqd, false);
	} else if (nr_secs != rqd->nr_ppas) {
		/* The read bio request could be partially filled by the write
		 * buffer, but there are some holes that need to be read from
		 * the drive. In order to handle this, we will use block layer
		 * mechanism to split this request in to smaller ones and make
		 * a chain of it.
		 */
		split_bio = FUNC7(bio, nr_secs * NR_PHY_IN_LOG, GFP_KERNEL,
					&pblk_bio_set);
		FUNC2(split_bio, bio);
		FUNC8(bio);

		/* New bio contains first N sectors of the previous one, so
		 * we can continue to use existing rqd, but we need to shrink
		 * the number of PPAs in it. New bio is also guaranteed that
		 * it contains only either data from cache or from drive, newer
		 * mix of them.
		 */
		bio = split_bio;
		rqd->nr_ppas = nr_secs;
		if (rqd->nr_ppas == 1)
			rqd->ppa_addr = rqd->ppa_list[0];

		/* Recreate int_bio - existing might have some needed internal
		 * fields modified already.
		 */
		FUNC5(int_bio);
		int_bio = FUNC3(bio, GFP_KERNEL, &pblk_bio_set);
		goto split_retry;
	} else if (FUNC20(pblk, rqd, NULL)) {
		/* Submitting IO to drive failed, let's report an error */
		rqd->error = -ENODEV;
		FUNC13(rqd);
	}
}