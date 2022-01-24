#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct ocrdma_eq {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  db_page_size; } ;
struct ocrdma_dev {TYPE_2__ nic_info; struct ocrdma_eq* eq_tbl; int /*<<< orphan*/ ** cq_tbl; } ;
struct ocrdma_cq {size_t id; TYPE_3__* ucontext; int /*<<< orphan*/  len; scalar_t__ pa; int /*<<< orphan*/  eqn; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {TYPE_1__* cntxt_pd; } ;
struct TYPE_4__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ocrdma_cq* FUNC1 (struct ib_cq*) ; 
 struct ocrdma_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_cq*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocrdma_dev*,int) ; 
 size_t FUNC6 (struct ocrdma_dev*,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (struct ocrdma_dev*,struct ocrdma_eq*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocrdma_dev*,struct ocrdma_cq*) ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 

void FUNC10(struct ib_cq *ibcq, struct ib_udata *udata)
{
	struct ocrdma_cq *cq = FUNC1(ibcq);
	struct ocrdma_eq *eq = NULL;
	struct ocrdma_dev *dev = FUNC2(ibcq->device);
	int pdid = 0;
	u32 irq, indx;

	dev->cq_tbl[cq->id] = NULL;
	indx = FUNC6(dev, cq->eqn);

	eq = &dev->eq_tbl[indx];
	irq = FUNC7(dev, eq);
	FUNC9(irq);
	FUNC4(cq);

	FUNC8(dev, cq);
	if (cq->ucontext) {
		pdid = cq->ucontext->cntxt_pd->id;
		FUNC3(cq->ucontext, (u64) cq->pa,
				FUNC0(cq->len));
		FUNC3(cq->ucontext,
				FUNC5(dev, pdid),
				dev->nic_info.db_page_size);
	}
}