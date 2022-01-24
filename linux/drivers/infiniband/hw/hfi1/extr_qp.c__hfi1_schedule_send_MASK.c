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
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct rvt_qp {TYPE_2__ ibqp; int /*<<< orphan*/  port_num; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {TYPE_1__* s_sde; int /*<<< orphan*/  s_iowait; } ;
struct hfi1_pportdata {int /*<<< orphan*/  hfi1_wq; } ;
struct hfi1_ibport {int dummy; } ;
struct hfi1_devdata {int /*<<< orphan*/  node; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hfi1_devdata* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hfi1_pportdata* FUNC4 (struct hfi1_ibport*) ; 
 struct hfi1_ibport* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC6(struct rvt_qp *qp)
{
	struct hfi1_qp_priv *priv = qp->priv;
	struct hfi1_ibport *ibp =
		FUNC5(qp->ibqp.device, qp->port_num);
	struct hfi1_pportdata *ppd = FUNC4(ibp);
	struct hfi1_devdata *dd = FUNC2(qp->ibqp.device);

	return FUNC3(&priv->s_iowait, ppd->hfi1_wq,
			       priv->s_sde ?
			       priv->s_sde->cpu :
			       FUNC0(FUNC1(dd->node)));
}