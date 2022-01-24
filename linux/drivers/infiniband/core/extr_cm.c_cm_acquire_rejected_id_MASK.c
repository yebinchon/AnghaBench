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
struct TYPE_4__ {int /*<<< orphan*/  local_id; } ;
struct cm_timewait_info {TYPE_1__ work; } ;
struct cm_rej_msg {scalar_t__ local_comm_id; int /*<<< orphan*/  remote_comm_id; scalar_t__ ari; int /*<<< orphan*/  reason; } ;
struct TYPE_5__ {scalar_t__ remote_id; } ;
struct cm_id_private {int /*<<< orphan*/  refcount; TYPE_2__ id; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  scalar_t__ __be32 ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  local_id_table; } ;

/* Variables and functions */
 scalar_t__ CM_MSG_RESPONSE_REQ ; 
 scalar_t__ IB_CM_REJ_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__ cm ; 
 struct cm_id_private* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct cm_timewait_info* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct cm_rej_msg*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct cm_id_private* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cm_id_private * FUNC9(struct cm_rej_msg *rej_msg)
{
	struct cm_timewait_info *timewait_info;
	struct cm_id_private *cm_id_priv;
	__be32 remote_id;

	remote_id = rej_msg->local_comm_id;

	if (FUNC0(rej_msg->reason) == IB_CM_REJ_TIMEOUT) {
		FUNC6(&cm.lock);
		timewait_info = FUNC3( *((__be64 *) rej_msg->ari),
						  remote_id);
		if (!timewait_info) {
			FUNC7(&cm.lock);
			return NULL;
		}
		cm_id_priv = FUNC8(&cm.local_id_table,
				FUNC4(timewait_info->work.local_id));
		if (cm_id_priv) {
			if (cm_id_priv->id.remote_id == remote_id)
				FUNC1(&cm_id_priv->refcount);
			else
				cm_id_priv = NULL;
		}
		FUNC7(&cm.lock);
	} else if (FUNC5(rej_msg) == CM_MSG_RESPONSE_REQ)
		cm_id_priv = FUNC2(rej_msg->remote_comm_id, 0);
	else
		cm_id_priv = FUNC2(rej_msg->remote_comm_id, remote_id);

	return cm_id_priv;
}