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
typedef  int /*<<< orphan*/  u32 ;
struct rvt_qp {scalar_t__ state; struct hfi1_qp_priv* priv; } ;
struct TYPE_2__ {int extended; } ;
struct hfi1_qp_priv {TYPE_1__ opfn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IB_QPS_RTS ; 
 int /*<<< orphan*/  OPFN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_qp*) ; 

void FUNC3(struct rvt_qp *qp, u32 bth1)
{
	struct hfi1_qp_priv *priv = qp->priv;

	if (!priv->opfn.extended && FUNC1(bth1) &&
	    FUNC0(OPFN)) {
		priv->opfn.extended = 1;
		if (qp->state == IB_QPS_RTS)
			FUNC2(qp);
	}
}