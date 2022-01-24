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
struct TYPE_2__ {int /*<<< orphan*/ * lock; int /*<<< orphan*/  list; } ;
struct hfi1_qp_priv {TYPE_1__ s_iowait; } ;
typedef  int /*<<< orphan*/  seqlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct rvt_qp *qp)
{
	struct hfi1_qp_priv *priv = qp->priv;
	unsigned long flags;
	seqlock_t *lock = priv->s_iowait.lock;

	if (!lock)
		return;
	FUNC3(lock, flags);
	if (!FUNC1(&priv->s_iowait.list)) {
		FUNC0(&priv->s_iowait.list);
		priv->s_iowait.lock = NULL;
		FUNC2(qp);
	}
	FUNC4(lock, flags);
}