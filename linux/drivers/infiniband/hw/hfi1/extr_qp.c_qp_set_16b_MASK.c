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
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct rvt_qp {int /*<<< orphan*/  remote_ah_attr; int /*<<< orphan*/  port_num; TYPE_1__ ibqp; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int /*<<< orphan*/  hdr_type; } ;
struct hfi1_pportdata {int /*<<< orphan*/  lid; } ;
struct hfi1_ibport {int dummy; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hfi1_pportdata* FUNC3 (struct hfi1_ibport*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct hfi1_ibport* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct rvt_qp *qp)
{
	struct hfi1_pportdata *ppd;
	struct hfi1_ibport *ibp;
	struct hfi1_qp_priv *priv = qp->priv;

	/* Update ah_attr to account for extended LIDs */
	FUNC2(qp->ibqp.device, &qp->remote_ah_attr);

	/* Create 32 bit LIDs */
	FUNC1(&qp->remote_ah_attr);

	if (!(FUNC4(&qp->remote_ah_attr) & IB_AH_GRH))
		return;

	ibp = FUNC5(qp->ibqp.device, qp->port_num);
	ppd = FUNC3(ibp);
	priv->hdr_type = FUNC0(ppd->lid, &qp->remote_ah_attr);
}