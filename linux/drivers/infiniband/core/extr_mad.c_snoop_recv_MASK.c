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
struct TYPE_2__ {int /*<<< orphan*/  (* recv_handler ) (TYPE_1__*,int /*<<< orphan*/ *,struct ib_mad_recv_wc*) ;} ;
struct ib_mad_snoop_private {int mad_snoop_flags; TYPE_1__ agent; int /*<<< orphan*/  refcount; } ;
struct ib_mad_recv_wc {int dummy; } ;
struct ib_mad_qp_info {int snoop_table_size; int /*<<< orphan*/  snoop_lock; struct ib_mad_snoop_private** snoop_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mad_snoop_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,struct ib_mad_recv_wc*) ; 

__attribute__((used)) static void FUNC5(struct ib_mad_qp_info *qp_info,
		       struct ib_mad_recv_wc *mad_recv_wc,
		       int mad_snoop_flags)
{
	struct ib_mad_snoop_private *mad_snoop_priv;
	unsigned long flags;
	int i;

	FUNC2(&qp_info->snoop_lock, flags);
	for (i = 0; i < qp_info->snoop_table_size; i++) {
		mad_snoop_priv = qp_info->snoop_table[i];
		if (!mad_snoop_priv ||
		    !(mad_snoop_priv->mad_snoop_flags & mad_snoop_flags))
			continue;

		FUNC0(&mad_snoop_priv->refcount);
		FUNC3(&qp_info->snoop_lock, flags);
		mad_snoop_priv->agent.recv_handler(&mad_snoop_priv->agent, NULL,
						   mad_recv_wc);
		FUNC1(mad_snoop_priv);
		FUNC2(&qp_info->snoop_lock, flags);
	}
	FUNC3(&qp_info->snoop_lock, flags);
}