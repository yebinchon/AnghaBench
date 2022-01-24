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
struct ib_mad_port_private {int /*<<< orphan*/  wq; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  hi_tid; } ;
struct ib_mad_agent_private {int /*<<< orphan*/  reg_req; TYPE_2__ agent; int /*<<< orphan*/  comp; int /*<<< orphan*/  timed_work; TYPE_1__* qp_info; } ;
struct TYPE_3__ {struct ib_mad_port_private* port_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mad_agent_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_agent_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_mad_agent_private*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  ib_mad_clients ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_mad_agent_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC8 (struct ib_mad_agent_private*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_mad_agent_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct ib_mad_agent_private *mad_agent_priv)
{
	struct ib_mad_port_private *port_priv;

	/* Note that we could still be handling received MADs */
	FUNC11(mad_agent_priv);

	/*
	 * Canceling all sends results in dropping received response
	 * MADs, preventing us from queuing additional work
	 */
	FUNC1(mad_agent_priv);
	port_priv = mad_agent_priv->qp_info->port_priv;
	FUNC0(&mad_agent_priv->timed_work);

	FUNC9(&port_priv->reg_lock);
	FUNC8(mad_agent_priv);
	FUNC10(&port_priv->reg_lock);
	FUNC13(&ib_mad_clients, mad_agent_priv->agent.hi_tid);

	FUNC3(port_priv->wq);
	FUNC4(mad_agent_priv);

	FUNC2(mad_agent_priv);
	FUNC12(&mad_agent_priv->comp);

	FUNC5(&mad_agent_priv->agent);

	FUNC6(mad_agent_priv->reg_req);
	FUNC7(mad_agent_priv, rcu);
}