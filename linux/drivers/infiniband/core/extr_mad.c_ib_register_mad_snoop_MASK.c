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
typedef  int /*<<< orphan*/  u8 ;
struct ib_mad_agent {int /*<<< orphan*/  port_num; int /*<<< orphan*/  qp; void* context; scalar_t__ snoop_handler; scalar_t__ recv_handler; struct ib_device* device; } ;
struct ib_mad_snoop_private {int mad_snoop_flags; int snoop_index; struct ib_mad_agent agent; int /*<<< orphan*/  refcount; int /*<<< orphan*/  comp; TYPE_1__* qp_info; } ;
struct ib_mad_port_private {TYPE_1__* qp_info; } ;
struct ib_device {int dummy; } ;
typedef  scalar_t__ ib_mad_snoop_handler ;
typedef  scalar_t__ ib_mad_recv_handler ;
typedef  enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
struct TYPE_2__ {int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct ib_mad_agent* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int) ; 
 struct ib_mad_port_private* FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_mad_agent*) ; 
 int FUNC5 (struct ib_mad_agent*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_mad_snoop_private*) ; 
 struct ib_mad_snoop_private* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,struct ib_mad_snoop_private*) ; 

struct ib_mad_agent *FUNC12(struct ib_device *device,
					   u8 port_num,
					   enum ib_qp_type qp_type,
					   int mad_snoop_flags,
					   ib_mad_snoop_handler snoop_handler,
					   ib_mad_recv_handler recv_handler,
					   void *context)
{
	struct ib_mad_port_private *port_priv;
	struct ib_mad_agent *ret;
	struct ib_mad_snoop_private *mad_snoop_priv;
	int qpn;
	int err;

	/* Validate parameters */
	if ((FUNC8(mad_snoop_flags) && !snoop_handler) ||
	    (FUNC7(mad_snoop_flags) && !recv_handler)) {
		ret = FUNC0(-EINVAL);
		goto error1;
	}
	qpn = FUNC2(qp_type);
	if (qpn == -1) {
		ret = FUNC0(-EINVAL);
		goto error1;
	}
	port_priv = FUNC3(device, port_num);
	if (!port_priv) {
		ret = FUNC0(-ENODEV);
		goto error1;
	}
	/* Allocate structures */
	mad_snoop_priv = FUNC10(sizeof *mad_snoop_priv, GFP_KERNEL);
	if (!mad_snoop_priv) {
		ret = FUNC0(-ENOMEM);
		goto error1;
	}

	/* Now, fill in the various structures */
	mad_snoop_priv->qp_info = &port_priv->qp_info[qpn];
	mad_snoop_priv->agent.device = device;
	mad_snoop_priv->agent.recv_handler = recv_handler;
	mad_snoop_priv->agent.snoop_handler = snoop_handler;
	mad_snoop_priv->agent.context = context;
	mad_snoop_priv->agent.qp = port_priv->qp_info[qpn].qp;
	mad_snoop_priv->agent.port_num = port_num;
	mad_snoop_priv->mad_snoop_flags = mad_snoop_flags;
	FUNC6(&mad_snoop_priv->comp);

	err = FUNC5(&mad_snoop_priv->agent, qp_type);
	if (err) {
		ret = FUNC0(err);
		goto error2;
	}

	mad_snoop_priv->snoop_index = FUNC11(
						&port_priv->qp_info[qpn],
						mad_snoop_priv);
	if (mad_snoop_priv->snoop_index < 0) {
		ret = FUNC0(mad_snoop_priv->snoop_index);
		goto error3;
	}

	FUNC1(&mad_snoop_priv->refcount, 1);
	return &mad_snoop_priv->agent;
error3:
	FUNC4(&mad_snoop_priv->agent);
error2:
	FUNC9(mad_snoop_priv);
error1:
	return ret;
}