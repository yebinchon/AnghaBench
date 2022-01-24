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
struct hfi1_qp_priv {int /*<<< orphan*/  s_iowait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_qp*) ; 

void FUNC5(struct rvt_qp *qp)
{
	struct hfi1_qp_priv *priv = qp->priv;

	FUNC1(qp);
	FUNC2(qp);
	FUNC3(&priv->s_iowait);
	FUNC4(qp);
	FUNC0(qp);
}