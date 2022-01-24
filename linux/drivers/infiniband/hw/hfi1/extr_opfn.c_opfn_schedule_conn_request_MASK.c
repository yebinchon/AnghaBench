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
struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  opfn_work; } ;
struct hfi1_qp_priv {TYPE_1__ opfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  opfn_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_qp*) ; 

__attribute__((used)) static void FUNC2(struct rvt_qp *qp)
{
	struct hfi1_qp_priv *priv = qp->priv;

	FUNC1(qp);
	FUNC0(opfn_wq, &priv->opfn.opfn_work);
}