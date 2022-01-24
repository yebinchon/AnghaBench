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
struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct rvt_dev_info {int dummy; } ;
struct hfi1_qp_priv {struct hfi1_qp_priv* s_ahg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rvt_dev_info*,struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_qp_priv*) ; 

void FUNC2(struct rvt_dev_info *rdi, struct rvt_qp *qp)
{
	struct hfi1_qp_priv *priv = qp->priv;

	FUNC0(rdi, qp);
	FUNC1(priv->s_ahg);
	FUNC1(priv);
}