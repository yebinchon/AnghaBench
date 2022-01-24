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
struct TYPE_3__ {int /*<<< orphan*/  max_elements; int /*<<< orphan*/  cons; } ;
struct bnxt_qplib_rcfw {int requested; int vector; int /*<<< orphan*/  creq_ring_id; TYPE_1__ creq; int /*<<< orphan*/  creq_bar_reg_iomem; int /*<<< orphan*/  worker; TYPE_2__* res; } ;
struct TYPE_4__ {int /*<<< orphan*/  cctx; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  bnxt_qplib_creq_irq ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bnxt_qplib_service_creq ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct bnxt_qplib_rcfw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC5(struct bnxt_qplib_rcfw *rcfw, int msix_vector,
			      bool need_init)
{
	bool gen_p5 = FUNC0(rcfw->res->cctx);
	int rc;

	if (rcfw->requested)
		return -EFAULT;

	rcfw->vector = msix_vector;
	if (need_init)
		FUNC4(&rcfw->worker,
			     bnxt_qplib_service_creq, (unsigned long)rcfw);
	else
		FUNC3(&rcfw->worker);
	rc = FUNC2(rcfw->vector, bnxt_qplib_creq_irq, 0,
			 "bnxt_qplib_creq", rcfw);
	if (rc)
		return rc;
	rcfw->requested = true;
	FUNC1(rcfw->creq_bar_reg_iomem,
				      rcfw->creq.cons, rcfw->creq.max_elements,
				      rcfw->creq_ring_id, gen_p5);

	return 0;
}