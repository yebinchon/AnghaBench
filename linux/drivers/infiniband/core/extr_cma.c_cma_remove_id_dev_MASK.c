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
struct TYPE_2__ {int (* event_handler ) (TYPE_1__*,struct rdma_cm_event*) ;} ;
struct rdma_id_private {int /*<<< orphan*/  handler_mutex; TYPE_1__ id; } ;
struct rdma_cm_event {int /*<<< orphan*/  event; } ;
typedef  enum rdma_cm_state { ____Placeholder_rdma_cm_state } rdma_cm_state ;

/* Variables and functions */
 int RDMA_CM_DESTROYING ; 
 int /*<<< orphan*/  RDMA_CM_DEVICE_REMOVAL ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_DEVICE_REMOVAL ; 
 int /*<<< orphan*/  FUNC0 (struct rdma_id_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,struct rdma_cm_event*) ; 

__attribute__((used)) static int FUNC6(struct rdma_id_private *id_priv)
{
	struct rdma_cm_event event = {};
	enum rdma_cm_state state;
	int ret = 0;

	/* Record that we want to remove the device */
	state = FUNC2(id_priv, RDMA_CM_DEVICE_REMOVAL);
	if (state == RDMA_CM_DESTROYING)
		return 0;

	FUNC0(id_priv, state);
	FUNC3(&id_priv->handler_mutex);

	/* Check for destruction from another callback. */
	if (!FUNC1(id_priv, RDMA_CM_DEVICE_REMOVAL))
		goto out;

	event.event = RDMA_CM_EVENT_DEVICE_REMOVAL;
	ret = id_priv->id.event_handler(&id_priv->id, &event);
out:
	FUNC4(&id_priv->handler_mutex);
	return ret;
}