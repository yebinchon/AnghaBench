#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr {int dummy; } ;
struct rdma_id_private {int flags; } ;
struct rdma_bind_list {int dummy; } ;
struct net_device {int flags; } ;
struct ib_cm_id {int dummy; } ;
struct ib_cm_event {int dummy; } ;
struct cma_req_info {int /*<<< orphan*/  service_id; int /*<<< orphan*/  src_addr_storage; int /*<<< orphan*/  listen_addr_storage; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int EHOSTUNREACH ; 
 struct rdma_id_private* FUNC0 (struct rdma_id_private*) ; 
 struct rdma_id_private* FUNC1 (int) ; 
 int IFF_UP ; 
 scalar_t__ FUNC2 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_id_private*) ; 
 struct rdma_id_private* FUNC4 (struct rdma_bind_list*,struct ib_cm_id*,struct ib_cm_event const*,struct cma_req_info*,struct rdma_id_private*) ; 
 struct rdma_id_private* FUNC5 (struct ib_cm_event const*,struct cma_req_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct rdma_bind_list* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ib_cm_event const*,struct cma_req_info*) ; 
 int /*<<< orphan*/ * FUNC9 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rdma_id_private*,struct sockaddr*,struct sockaddr*) ; 

__attribute__((used)) static struct rdma_id_private *
FUNC15(struct ib_cm_id *cm_id,
		     const struct ib_cm_event *ib_event,
		     struct cma_req_info *req,
		     struct net_device **net_dev)
{
	struct rdma_bind_list *bind_list;
	struct rdma_id_private *id_priv;
	int err;

	err = FUNC8(ib_event, req);
	if (err)
		return FUNC1(err);

	*net_dev = FUNC5(ib_event, req);
	if (FUNC2(*net_dev)) {
		if (FUNC3(*net_dev) == -EAFNOSUPPORT) {
			/* Assuming the protocol is AF_IB */
			*net_dev = NULL;
		} else {
			return FUNC0(*net_dev);
		}
	}

	/*
	 * Net namespace might be getting deleted while route lookup,
	 * cm_id lookup is in progress. Therefore, perform netdevice
	 * validation, cm_id lookup under rcu lock.
	 * RCU lock along with netdevice state check, synchronizes with
	 * netdevice migrating to different net namespace and also avoids
	 * case where net namespace doesn't get deleted while lookup is in
	 * progress.
	 * If the device state is not IFF_UP, its properties such as ifindex
	 * and nd_net cannot be trusted to remain valid without rcu lock.
	 * net/core/dev.c change_net_namespace() ensures to synchronize with
	 * ongoing operations on net device after device is closed using
	 * synchronize_net().
	 */
	FUNC11();
	if (*net_dev) {
		/*
		 * If netdevice is down, it is likely that it is administratively
		 * down or it might be migrating to different namespace.
		 * In that case avoid further processing, as the net namespace
		 * or ifindex may change.
		 */
		if (((*net_dev)->flags & IFF_UP) == 0) {
			id_priv = FUNC1(-EHOSTUNREACH);
			goto err;
		}

		if (!FUNC14(*net_dev,
				 (struct sockaddr *)&req->listen_addr_storage,
				 (struct sockaddr *)&req->src_addr_storage)) {
			id_priv = FUNC1(-EHOSTUNREACH);
			goto err;
		}
	}

	bind_list = FUNC7(*net_dev ? FUNC9(*net_dev) : &init_net,
				FUNC13(req->service_id),
				FUNC6(req->service_id));
	id_priv = FUNC4(bind_list, cm_id, ib_event, req, *net_dev);
err:
	FUNC12();
	if (FUNC2(id_priv) && *net_dev) {
		FUNC10(*net_dev);
		*net_dev = NULL;
	}
	return id_priv;
}