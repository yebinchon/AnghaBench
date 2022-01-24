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
typedef  union ib_gid {int dummy; } ib_gid ;
struct sockaddr {int dummy; } ;
struct net_device {int dummy; } ;
struct ib_cm_event {int dummy; } ;
struct cma_req_info {int /*<<< orphan*/  pkey; int /*<<< orphan*/  port; int /*<<< orphan*/  device; int /*<<< orphan*/  service_id; union ib_gid local_gid; scalar_t__ has_gid; int /*<<< orphan*/  src_addr_storage; int /*<<< orphan*/  listen_addr_storage; } ;

/* Variables and functions */
 int ENODEV ; 
 struct net_device* FUNC0 (int) ; 
 int FUNC1 (struct sockaddr*,struct sockaddr*,struct ib_cm_event const*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ib_gid const*,struct sockaddr*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct ib_cm_event const*) ; 

__attribute__((used)) static struct net_device *FUNC5(const struct ib_cm_event *ib_event,
					  struct cma_req_info *req)
{
	struct sockaddr *listen_addr =
			(struct sockaddr *)&req->listen_addr_storage;
	struct sockaddr *src_addr = (struct sockaddr *)&req->src_addr_storage;
	struct net_device *net_dev;
	const union ib_gid *gid = req->has_gid ? &req->local_gid : NULL;
	int err;

	err = FUNC1(listen_addr, src_addr, ib_event,
			       req->service_id);
	if (err)
		return FUNC0(err);

	if (FUNC3(req->device, req->port))
		net_dev = FUNC4(ib_event);
	else
		net_dev = FUNC2(req->device, req->port,
						   req->pkey,
						   gid, listen_addr);
	if (!net_dev)
		return FUNC0(-ENODEV);

	return net_dev;
}