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
struct rvt_qp {struct qib_qp_priv* priv; } ;
struct qib_qp_priv {int /*<<< orphan*/ * s_tx; int /*<<< orphan*/  s_dma_busy; int /*<<< orphan*/  wait_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(struct rvt_qp *qp)
{
	struct qib_qp_priv *priv = qp->priv;

	FUNC2(priv->wait_dma, !FUNC0(&priv->s_dma_busy));
	if (priv->s_tx) {
		FUNC1(priv->s_tx);
		priv->s_tx = NULL;
	}
}