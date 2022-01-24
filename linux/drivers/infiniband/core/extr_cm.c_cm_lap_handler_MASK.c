#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct ib_mad_send_buf {scalar_t__ mad; } ;
struct ib_cm_lap_event_param {int /*<<< orphan*/ * alternate_path; } ;
struct TYPE_14__ {struct ib_cm_lap_event_param lap_rcvd; } ;
struct TYPE_16__ {int /*<<< orphan*/ * private_data; TYPE_1__ param; } ;
struct cm_work {int /*<<< orphan*/  list; TYPE_10__* mad_recv_wc; TYPE_8__* port; TYPE_3__ cm_event; int /*<<< orphan*/ * path; } ;
struct cm_mra_msg {int dummy; } ;
struct TYPE_20__ {int /*<<< orphan*/  tid; } ;
struct cm_lap_msg {TYPE_7__ hdr; int /*<<< orphan*/  private_data; int /*<<< orphan*/  alt_local_gid; int /*<<< orphan*/  local_comm_id; int /*<<< orphan*/  remote_comm_id; } ;
struct TYPE_19__ {scalar_t__ state; int lap_state; } ;
struct cm_id_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_count; int /*<<< orphan*/  tid; TYPE_6__ id; int /*<<< orphan*/  alt_av; int /*<<< orphan*/  av; int /*<<< orphan*/  private_data_len; int /*<<< orphan*/  private_data; int /*<<< orphan*/  service_timeout; } ;
struct TYPE_21__ {TYPE_4__* counter_group; int /*<<< orphan*/  port_num; TYPE_2__* cm_dev; } ;
struct TYPE_18__ {int /*<<< orphan*/  grh; scalar_t__ mad; } ;
struct TYPE_17__ {int /*<<< orphan*/ * counter; } ;
struct TYPE_15__ {int /*<<< orphan*/  ib_device; } ;
struct TYPE_13__ {TYPE_5__ recv_buf; int /*<<< orphan*/  wc; } ;

/* Variables and functions */
 size_t CM_LAP_COUNTER ; 
 int /*<<< orphan*/  CM_MSG_RESPONSE_OTHER ; 
 size_t CM_RECV_DUPLICATES ; 
 int EINVAL ; 
 scalar_t__ IB_CM_ESTABLISHED ; 
#define  IB_CM_LAP_IDLE 131 
#define  IB_CM_LAP_RCVD 130 
#define  IB_CM_LAP_UNINIT 129 
#define  IB_CM_MRA_LAP_SENT 128 
 int /*<<< orphan*/  FUNC0 (struct ib_mad_send_buf*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cm_id_private* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ib_mad_send_buf* FUNC4 (TYPE_8__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,TYPE_10__*,struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct cm_mra_msg*,struct cm_id_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cm_id_private*,int /*<<< orphan*/ *,struct cm_lap_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_mad_send_buf*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cm_id_private*) ; 
 int FUNC11 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct cm_id_private*,struct cm_work*) ; 
 int /*<<< orphan*/  FUNC14 (struct ib_mad_send_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct cm_work *work)
{
	struct cm_id_private *cm_id_priv;
	struct cm_lap_msg *lap_msg;
	struct ib_cm_lap_event_param *param;
	struct ib_mad_send_buf *msg = NULL;
	int ret;

	/* Currently Alternate path messages are not supported for
	 * RoCE link layer.
	 */
	if (FUNC17(work->port->cm_dev->ib_device,
			       work->port->port_num))
		return -EINVAL;

	/* todo: verify LAP request and send reject APR if invalid. */
	lap_msg = (struct cm_lap_msg *)work->mad_recv_wc->recv_buf.mad;
	cm_id_priv = FUNC3(lap_msg->remote_comm_id,
				   lap_msg->local_comm_id);
	if (!cm_id_priv)
		return -EINVAL;

	param = &work->cm_event.param.lap_rcvd;
	FUNC16(&work->path[0], 0, sizeof(work->path[1]));
	FUNC12(work->port->cm_dev->ib_device,
			     work->port->port_num,
			     &work->path[0],
			     &lap_msg->alt_local_gid);
	param->alternate_path = &work->path[0];
	FUNC8(cm_id_priv, param->alternate_path, lap_msg);
	work->cm_event.private_data = &lap_msg->private_data;

	FUNC18(&cm_id_priv->lock);
	if (cm_id_priv->id.state != IB_CM_ESTABLISHED)
		goto unlock;

	switch (cm_id_priv->id.lap_state) {
	case IB_CM_LAP_UNINIT:
	case IB_CM_LAP_IDLE:
		break;
	case IB_CM_MRA_LAP_SENT:
		FUNC2(&work->port->counter_group[CM_RECV_DUPLICATES].
				counter[CM_LAP_COUNTER]);
		msg = FUNC4(work->port, work->mad_recv_wc);
		if (FUNC0(msg))
			goto unlock;

		FUNC7((struct cm_mra_msg *) msg->mad, cm_id_priv,
			      CM_MSG_RESPONSE_OTHER,
			      cm_id_priv->service_timeout,
			      cm_id_priv->private_data,
			      cm_id_priv->private_data_len);
		FUNC19(&cm_id_priv->lock);

		if (FUNC5(work->port, work->mad_recv_wc, msg) ||
		    FUNC14(msg, NULL))
			FUNC9(msg);
		goto deref;
	case IB_CM_LAP_RCVD:
		FUNC2(&work->port->counter_group[CM_RECV_DUPLICATES].
				counter[CM_LAP_COUNTER]);
		goto unlock;
	default:
		goto unlock;
	}

	ret = FUNC11(work->port, work->mad_recv_wc->wc,
				 work->mad_recv_wc->recv_buf.grh,
				 &cm_id_priv->av);
	if (ret)
		goto unlock;

	ret = FUNC10(param->alternate_path, NULL,
				 &cm_id_priv->alt_av, cm_id_priv);
	if (ret)
		goto unlock;

	cm_id_priv->id.lap_state = IB_CM_LAP_RCVD;
	cm_id_priv->tid = lap_msg->hdr.tid;
	ret = FUNC1(&cm_id_priv->work_count);
	if (!ret)
		FUNC15(&work->list, &cm_id_priv->work_list);
	FUNC19(&cm_id_priv->lock);

	if (ret)
		FUNC13(cm_id_priv, work);
	else
		FUNC6(cm_id_priv);
	return 0;

unlock:	FUNC19(&cm_id_priv->lock);
deref:	FUNC6(cm_id_priv);
	return -EINVAL;
}