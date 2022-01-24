#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ib_mad_send_buf {struct cm_id_private** context; } ;
struct TYPE_4__ {int send_status; } ;
struct ib_cm_event {TYPE_1__ param; int /*<<< orphan*/  event; } ;
struct TYPE_5__ {int state; int (* cm_handler ) (TYPE_2__*,struct ib_cm_event*) ;} ;
struct cm_id_private {int /*<<< orphan*/  lock; TYPE_2__ id; struct ib_mad_send_buf* msg; } ;
typedef  enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;
typedef  enum ib_cm_state { ____Placeholder_ib_cm_state } ib_cm_state ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CM_DREQ_ERROR ; 
#define  IB_CM_DREQ_SENT 133 
 int IB_CM_IDLE ; 
#define  IB_CM_MRA_REP_RCVD 132 
#define  IB_CM_MRA_REQ_RCVD 131 
 int /*<<< orphan*/  IB_CM_REP_ERROR ; 
#define  IB_CM_REP_SENT 130 
 int /*<<< orphan*/  IB_CM_REQ_ERROR ; 
#define  IB_CM_REQ_SENT 129 
 int /*<<< orphan*/  IB_CM_SIDR_REQ_ERROR ; 
#define  IB_CM_SIDR_REQ_SENT 128 
 int /*<<< orphan*/  FUNC0 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_cm_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_2__*,struct ib_cm_event*) ; 

__attribute__((used)) static void FUNC10(struct ib_mad_send_buf *msg,
				  enum ib_wc_status wc_status)
{
	struct cm_id_private *cm_id_priv;
	struct ib_cm_event cm_event;
	enum ib_cm_state state;
	int ret;

	FUNC5(&cm_event, 0, sizeof cm_event);
	cm_id_priv = msg->context[0];

	/* Discard old sends or ones without a response. */
	FUNC7(&cm_id_priv->lock);
	state = (enum ib_cm_state) (unsigned long) msg->context[1];
	if (msg != cm_id_priv->msg || state != cm_id_priv->id.state)
		goto discard;

	FUNC6("CM: failed sending MAD in state %d. (%s)\n",
			     state, FUNC4(wc_status));
	switch (state) {
	case IB_CM_REQ_SENT:
	case IB_CM_MRA_REQ_RCVD:
		FUNC2(cm_id_priv);
		cm_event.event = IB_CM_REQ_ERROR;
		break;
	case IB_CM_REP_SENT:
	case IB_CM_MRA_REP_RCVD:
		FUNC2(cm_id_priv);
		cm_event.event = IB_CM_REP_ERROR;
		break;
	case IB_CM_DREQ_SENT:
		FUNC0(cm_id_priv);
		cm_event.event = IB_CM_DREQ_ERROR;
		break;
	case IB_CM_SIDR_REQ_SENT:
		cm_id_priv->id.state = IB_CM_IDLE;
		cm_event.event = IB_CM_SIDR_REQ_ERROR;
		break;
	default:
		goto discard;
	}
	FUNC8(&cm_id_priv->lock);
	cm_event.param.send_status = wc_status;

	/* No other events can occur on the cm_id at this point. */
	ret = cm_id_priv->id.cm_handler(&cm_id_priv->id, &cm_event);
	FUNC1(msg);
	if (ret)
		FUNC3(&cm_id_priv->id);
	return;
discard:
	FUNC8(&cm_id_priv->lock);
	FUNC1(msg);
}