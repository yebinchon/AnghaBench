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
struct request_queue {struct pblk* queuedata; } ;
struct pblk {int /*<<< orphan*/  rl; } ;
struct bio {int bi_opf; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 int /*<<< orphan*/  PBLK_IOTYPE_USER ; 
 scalar_t__ READ ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int REQ_PREFLUSH ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct bio**) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,struct bio*) ; 
 scalar_t__ FUNC5 (struct bio*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pblk*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*,struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_qc_t FUNC9(struct request_queue *q, struct bio *bio)
{
	struct pblk *pblk = q->queuedata;

	if (FUNC2(bio) == REQ_OP_DISCARD) {
		FUNC4(pblk, bio);
		if (!(bio->bi_opf & REQ_PREFLUSH)) {
			FUNC1(bio);
			return BLK_QC_T_NONE;
		}
	}

	/* Read requests must be <= 256kb due to NVMe's 64 bit completion bitmap
	 * constraint. Writes can be of arbitrary size.
	 */
	if (FUNC0(bio) == READ) {
		FUNC3(q, &bio);
		FUNC7(pblk, bio);
	} else {
		/* Prevent deadlock in the case of a modest LUN configuration
		 * and large user I/Os. Unless stalled, the rate limiter
		 * leaves at least 256KB available for user I/O.
		 */
		if (FUNC5(bio) > FUNC6(&pblk->rl))
			FUNC3(q, &bio);

		FUNC8(pblk, bio, PBLK_IOTYPE_USER);
	}

	return BLK_QC_T_NONE;
}