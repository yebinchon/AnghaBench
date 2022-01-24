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
struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int /*<<< orphan*/  s_iowait; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_head; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rvt_qp *qp)
{
	struct hfi1_qp_priv *priv = qp->priv;

	FUNC0(&FUNC1(&priv->s_iowait)->tx_head);
	FUNC0(&FUNC2(&priv->s_iowait)->tx_head);
}