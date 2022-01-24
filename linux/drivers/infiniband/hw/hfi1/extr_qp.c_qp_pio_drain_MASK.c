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
struct hfi1_qp_priv {TYPE_1__* s_sendcontext; int /*<<< orphan*/  s_iowait; } ;
struct TYPE_2__ {int /*<<< orphan*/  waitlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rvt_qp *qp)
{
	struct hfi1_qp_priv *priv = qp->priv;

	if (!priv->s_sendcontext)
		return;
	while (FUNC2(&priv->s_iowait)) {
		FUNC3(&priv->s_sendcontext->waitlock);
		FUNC0(priv->s_sendcontext, 1);
		FUNC4(&priv->s_sendcontext->waitlock);
		FUNC1(&priv->s_iowait);
		FUNC3(&priv->s_sendcontext->waitlock);
		FUNC0(priv->s_sendcontext, 0);
		FUNC4(&priv->s_sendcontext->waitlock);
	}
}