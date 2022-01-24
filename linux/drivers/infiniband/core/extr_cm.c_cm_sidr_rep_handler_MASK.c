#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cm_work {TYPE_2__* mad_recv_wc; } ;
struct cm_sidr_rep_msg {int /*<<< orphan*/  request_id; } ;
struct TYPE_10__ {TYPE_4__* port; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct cm_id_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  msg; TYPE_5__ av; TYPE_3__ id; } ;
struct TYPE_9__ {int /*<<< orphan*/  mad_agent; } ;
struct TYPE_6__ {scalar_t__ mad; } ;
struct TYPE_7__ {TYPE_1__ recv_buf; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IB_CM_IDLE ; 
 scalar_t__ IB_CM_SIDR_REQ_SENT ; 
 struct cm_id_private* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct cm_work*,struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_id_private*,struct cm_work*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct cm_work *work)
{
	struct cm_sidr_rep_msg *sidr_rep_msg;
	struct cm_id_private *cm_id_priv;

	sidr_rep_msg = (struct cm_sidr_rep_msg *)
				work->mad_recv_wc->recv_buf.mad;
	cm_id_priv = FUNC0(sidr_rep_msg->request_id, 0);
	if (!cm_id_priv)
		return -EINVAL; /* Unmatched reply. */

	FUNC5(&cm_id_priv->lock);
	if (cm_id_priv->id.state != IB_CM_SIDR_REQ_SENT) {
		FUNC6(&cm_id_priv->lock);
		goto out;
	}
	cm_id_priv->id.state = IB_CM_IDLE;
	FUNC4(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
	FUNC6(&cm_id_priv->lock);

	FUNC2(work, cm_id_priv);
	FUNC3(cm_id_priv, work);
	return 0;
out:
	FUNC1(cm_id_priv);
	return -EINVAL;
}