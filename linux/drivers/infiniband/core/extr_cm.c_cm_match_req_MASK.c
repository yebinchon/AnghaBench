#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ib_cm_id {int /*<<< orphan*/  state; int /*<<< orphan*/  device; } ;
struct cm_work {TYPE_3__* mad_recv_wc; int /*<<< orphan*/  port; } ;
struct TYPE_6__ {int /*<<< orphan*/  remote_id; int /*<<< orphan*/  local_id; } ;
struct cm_timewait_info {TYPE_2__ work; } ;
struct cm_req_msg {int /*<<< orphan*/  service_id; } ;
struct cm_id_private {int /*<<< orphan*/  work_count; struct ib_cm_id id; int /*<<< orphan*/  refcount; int /*<<< orphan*/  timewait_info; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {scalar_t__ mad; } ;
struct TYPE_7__ {TYPE_1__ recv_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_MSG_RESPONSE_REQ ; 
 int /*<<< orphan*/  IB_CM_REJ_INVALID_SERVICE_ID ; 
 int /*<<< orphan*/  IB_CM_REJ_STALE_CONN ; 
 int /*<<< orphan*/  IB_CM_REQ_RCVD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__ cm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_work*,struct cm_id_private*) ; 
 struct cm_id_private* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cm_id_private* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cm_timewait_info* FUNC6 (int /*<<< orphan*/ ) ; 
 struct cm_timewait_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_cm_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cm_id_private * FUNC12(struct cm_work *work,
					   struct cm_id_private *cm_id_priv)
{
	struct cm_id_private *listen_cm_id_priv, *cur_cm_id_priv;
	struct cm_timewait_info *timewait_info;
	struct cm_req_msg *req_msg;
	struct ib_cm_id *cm_id;

	req_msg = (struct cm_req_msg *)work->mad_recv_wc->recv_buf.mad;

	/* Check for possible duplicate REQ. */
	FUNC10(&cm.lock);
	timewait_info = FUNC6(cm_id_priv->timewait_info);
	if (timewait_info) {
		cur_cm_id_priv = FUNC5(timewait_info->work.local_id,
					   timewait_info->work.remote_id);
		FUNC11(&cm.lock);
		if (cur_cm_id_priv) {
			FUNC3(work, cur_cm_id_priv);
			FUNC2(cur_cm_id_priv);
		}
		return NULL;
	}

	/* Check for stale connections. */
	timewait_info = FUNC7(cm_id_priv->timewait_info);
	if (timewait_info) {
		FUNC1(cm_id_priv->timewait_info);
		cur_cm_id_priv = FUNC5(timewait_info->work.local_id,
					   timewait_info->work.remote_id);

		FUNC11(&cm.lock);
		FUNC8(work->port, work->mad_recv_wc,
			     IB_CM_REJ_STALE_CONN, CM_MSG_RESPONSE_REQ,
			     NULL, 0);
		if (cur_cm_id_priv) {
			cm_id = &cur_cm_id_priv->id;
			FUNC9(cm_id, NULL, 0);
			FUNC2(cur_cm_id_priv);
		}
		return NULL;
	}

	/* Find matching listen request. */
	listen_cm_id_priv = FUNC4(cm_id_priv->id.device,
					   req_msg->service_id);
	if (!listen_cm_id_priv) {
		FUNC1(cm_id_priv->timewait_info);
		FUNC11(&cm.lock);
		FUNC8(work->port, work->mad_recv_wc,
			     IB_CM_REJ_INVALID_SERVICE_ID, CM_MSG_RESPONSE_REQ,
			     NULL, 0);
		goto out;
	}
	FUNC0(&listen_cm_id_priv->refcount);
	FUNC0(&cm_id_priv->refcount);
	cm_id_priv->id.state = IB_CM_REQ_RCVD;
	FUNC0(&cm_id_priv->work_count);
	FUNC11(&cm.lock);
out:
	return listen_cm_id_priv;
}