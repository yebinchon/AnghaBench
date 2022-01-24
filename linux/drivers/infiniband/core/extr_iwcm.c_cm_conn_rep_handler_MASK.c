#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int (* cm_handler ) (TYPE_3__*,struct iw_cm_event*) ;TYPE_2__* device; int /*<<< orphan*/  remote_addr; int /*<<< orphan*/  local_addr; int /*<<< orphan*/  m_remote_addr; int /*<<< orphan*/  m_local_addr; } ;
struct iwcm_id_private {scalar_t__ state; int /*<<< orphan*/  connect_wait; TYPE_3__ id; int /*<<< orphan*/  lock; struct ib_qp* qp; int /*<<< orphan*/  flags; } ;
struct iw_cm_event {scalar_t__ status; int /*<<< orphan*/  private_data; scalar_t__ private_data_len; int /*<<< orphan*/  remote_addr; int /*<<< orphan*/  local_addr; } ;
struct ib_qp {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* iw_rem_ref ) (struct ib_qp*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IWCM_F_CONNECT_WAIT ; 
 scalar_t__ IW_CM_STATE_CONN_SENT ; 
 scalar_t__ IW_CM_STATE_ESTABLISHED ; 
 scalar_t__ IW_CM_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_qp*) ; 
 int FUNC6 (TYPE_3__*,struct iw_cm_event*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct iwcm_id_private *cm_id_priv,
			       struct iw_cm_event *iw_event)
{
	struct ib_qp *qp = NULL;
	unsigned long flags;
	int ret;

	FUNC3(&cm_id_priv->lock, flags);
	/*
	 * Clear the connect wait bit so a callback function calling
	 * iw_cm_disconnect will not wait and deadlock this thread
	 */
	FUNC1(IWCM_F_CONNECT_WAIT, &cm_id_priv->flags);
	FUNC0(cm_id_priv->state != IW_CM_STATE_CONN_SENT);
	if (iw_event->status == 0) {
		cm_id_priv->id.m_local_addr = iw_event->local_addr;
		cm_id_priv->id.m_remote_addr = iw_event->remote_addr;
		iw_event->local_addr = cm_id_priv->id.local_addr;
		iw_event->remote_addr = cm_id_priv->id.remote_addr;
		cm_id_priv->state = IW_CM_STATE_ESTABLISHED;
	} else {
		/* REJECTED or RESET */
		qp = cm_id_priv->qp;
		cm_id_priv->qp = NULL;
		cm_id_priv->state = IW_CM_STATE_IDLE;
	}
	FUNC4(&cm_id_priv->lock, flags);
	if (qp)
		cm_id_priv->id.device->ops.iw_rem_ref(qp);
	ret = cm_id_priv->id.cm_handler(&cm_id_priv->id, iw_event);

	if (iw_event->private_data_len)
		FUNC2(iw_event->private_data);

	/* Wake up waiters on connect complete */
	FUNC7(&cm_id_priv->connect_wait);

	return ret;
}