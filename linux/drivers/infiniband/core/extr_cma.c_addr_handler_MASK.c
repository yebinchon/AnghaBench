#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
typedef  struct sockaddr_storage sockaddr ;
struct TYPE_3__ {scalar_t__ (* event_handler ) (TYPE_1__*,struct rdma_cm_event*) ;} ;
struct rdma_id_private {int /*<<< orphan*/  handler_mutex; TYPE_1__ id; int /*<<< orphan*/  cma_dev; } ;
struct rdma_dev_addr {int dummy; } ;
struct rdma_cm_event {int status; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMA_CM_ADDR_BOUND ; 
 int /*<<< orphan*/  RDMA_CM_ADDR_QUERY ; 
 int /*<<< orphan*/  RDMA_CM_ADDR_RESOLVED ; 
 int /*<<< orphan*/  RDMA_CM_DESTROYING ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_ADDR_ERROR ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_ADDR_RESOLVED ; 
 int FUNC0 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_id_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 struct sockaddr_storage* FUNC3 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,struct rdma_cm_event*) ; 

__attribute__((used)) static void FUNC11(int status, struct sockaddr *src_addr,
			 struct rdma_dev_addr *dev_addr, void *context)
{
	struct rdma_id_private *id_priv = context;
	struct rdma_cm_event event = {};
	struct sockaddr *addr;
	struct sockaddr_storage old_addr;

	FUNC5(&id_priv->handler_mutex);
	if (!FUNC1(id_priv, RDMA_CM_ADDR_QUERY,
			   RDMA_CM_ADDR_RESOLVED))
		goto out;

	/*
	 * Store the previous src address, so that if we fail to acquire
	 * matching rdma device, old address can be restored back, which helps
	 * to cancel the cma listen operation correctly.
	 */
	addr = FUNC3(id_priv);
	FUNC4(&old_addr, addr, FUNC8(addr));
	FUNC4(addr, src_addr, FUNC8(src_addr));
	if (!status && !id_priv->cma_dev) {
		status = FUNC0(id_priv);
		if (status)
			FUNC7("RDMA CM: ADDR_ERROR: failed to acquire device. status %d\n",
					     status);
	} else if (status) {
		FUNC7("RDMA CM: ADDR_ERROR: failed to resolve IP. status %d\n", status);
	}

	if (status) {
		FUNC4(addr, &old_addr,
		       FUNC8((struct sockaddr *)&old_addr));
		if (!FUNC1(id_priv, RDMA_CM_ADDR_RESOLVED,
				   RDMA_CM_ADDR_BOUND))
			goto out;
		event.event = RDMA_CM_EVENT_ADDR_ERROR;
		event.status = status;
	} else
		event.event = RDMA_CM_EVENT_ADDR_RESOLVED;

	if (id_priv->id.event_handler(&id_priv->id, &event)) {
		FUNC2(id_priv, RDMA_CM_DESTROYING);
		FUNC6(&id_priv->handler_mutex);
		FUNC9(&id_priv->id);
		return;
	}
out:
	FUNC6(&id_priv->handler_mutex);
}