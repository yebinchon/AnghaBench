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
struct TYPE_2__ {int (* cm_handler ) (TYPE_1__*,struct iw_cm_event*) ;} ;
struct iwcm_id_private {scalar_t__ state; int /*<<< orphan*/  connect_wait; TYPE_1__ id; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct iw_cm_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IWCM_F_CONNECT_WAIT ; 
 scalar_t__ IW_CM_STATE_CONN_RECV ; 
 scalar_t__ IW_CM_STATE_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (TYPE_1__*,struct iw_cm_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iwcm_id_private *cm_id_priv,
			       struct iw_cm_event *iw_event)
{
	unsigned long flags;
	int ret;

	FUNC2(&cm_id_priv->lock, flags);

	/*
	 * We clear the CONNECT_WAIT bit here to allow the callback
	 * function to call iw_cm_disconnect. Calling iw_destroy_cm_id
	 * from a callback handler is not allowed.
	 */
	FUNC1(IWCM_F_CONNECT_WAIT, &cm_id_priv->flags);
	FUNC0(cm_id_priv->state != IW_CM_STATE_CONN_RECV);
	cm_id_priv->state = IW_CM_STATE_ESTABLISHED;
	FUNC3(&cm_id_priv->lock, flags);
	ret = cm_id_priv->id.cm_handler(&cm_id_priv->id, iw_event);
	FUNC5(&cm_id_priv->connect_wait);

	return ret;
}