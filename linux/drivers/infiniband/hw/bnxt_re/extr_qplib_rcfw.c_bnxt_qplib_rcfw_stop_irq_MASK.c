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
struct TYPE_4__ {int /*<<< orphan*/  max_elements; int /*<<< orphan*/  cons; } ;
struct bnxt_qplib_rcfw {int requested; int /*<<< orphan*/  vector; int /*<<< orphan*/  worker; int /*<<< orphan*/  creq_ring_id; TYPE_2__ creq; int /*<<< orphan*/  creq_bar_reg_iomem; TYPE_1__* res; } ;
struct TYPE_3__ {int /*<<< orphan*/  cctx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bnxt_qplib_rcfw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct bnxt_qplib_rcfw *rcfw, bool kill)
{
	bool gen_p5 = FUNC0(rcfw->res->cctx);

	FUNC4(&rcfw->worker);
	/* Mask h/w interrupts */
	FUNC1(rcfw->creq_bar_reg_iomem, rcfw->creq.cons,
				rcfw->creq.max_elements, rcfw->creq_ring_id,
				gen_p5);
	/* Sync with last running IRQ-handler */
	FUNC3(rcfw->vector);
	if (kill)
		FUNC5(&rcfw->worker);

	if (rcfw->requested) {
		FUNC2(rcfw->vector, rcfw);
		rcfw->requested = false;
	}
}