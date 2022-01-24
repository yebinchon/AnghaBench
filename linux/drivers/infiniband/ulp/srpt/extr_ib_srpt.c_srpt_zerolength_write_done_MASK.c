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
struct srpt_rdma_ch {TYPE_1__* qp; int /*<<< orphan*/  sess_name; int /*<<< orphan*/  release_work; } ;
struct ib_wc {int /*<<< orphan*/  status; } ;
struct ib_cq {struct srpt_rdma_ch* cq_context; } ;
struct TYPE_2__ {int /*<<< orphan*/  qp_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_DISCONNECTED ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct srpt_rdma_ch*) ; 
 scalar_t__ FUNC3 (struct srpt_rdma_ch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ib_cq *cq, struct ib_wc *wc)
{
	struct srpt_rdma_ch *ch = cq->cq_context;

	FUNC0("%s-%d wc->status %d\n", ch->sess_name, ch->qp->qp_num,
		 wc->status);

	if (wc->status == IB_WC_SUCCESS) {
		FUNC2(ch);
	} else {
		if (FUNC3(ch, CH_DISCONNECTED))
			FUNC1(&ch->release_work);
		else
			FUNC0("%s-%d: already disconnected.\n",
				 ch->sess_name, ch->qp->qp_num);
	}
}