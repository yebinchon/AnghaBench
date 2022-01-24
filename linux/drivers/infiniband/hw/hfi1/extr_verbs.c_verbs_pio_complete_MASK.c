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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *arg, int code)
{
	struct rvt_qp *qp = (struct rvt_qp *)arg;
	struct hfi1_qp_priv *priv = qp->priv;

	if (FUNC1(&priv->s_iowait))
		FUNC0(&priv->s_iowait);
}