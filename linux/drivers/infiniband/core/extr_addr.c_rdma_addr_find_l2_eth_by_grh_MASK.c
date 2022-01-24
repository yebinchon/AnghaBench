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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct resolve_cb_context {int status; int /*<<< orphan*/  comp; } ;
struct rdma_dev_addr {int hoplimit; int /*<<< orphan*/  dst_dev_addr; struct ib_gid_attr const* sgid_attr; int /*<<< orphan*/ * net; } ;
struct ib_gid_attr {int dummy; } ;
typedef  int /*<<< orphan*/  dev_addr ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_dev_addr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*,union ib_gid const*) ; 
 int FUNC4 (struct sockaddr*,struct sockaddr*,struct rdma_dev_addr*,int,int /*<<< orphan*/ ,int,struct resolve_cb_context*) ; 
 int /*<<< orphan*/  resolve_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(const union ib_gid *sgid,
				 const union ib_gid *dgid,
				 u8 *dmac, const struct ib_gid_attr *sgid_attr,
				 int *hoplimit)
{
	struct rdma_dev_addr dev_addr;
	struct resolve_cb_context ctx;
	union {
		struct sockaddr_in  _sockaddr_in;
		struct sockaddr_in6 _sockaddr_in6;
	} sgid_addr, dgid_addr;
	int ret;

	FUNC3((struct sockaddr *)&sgid_addr, sgid);
	FUNC3((struct sockaddr *)&dgid_addr, dgid);

	FUNC2(&dev_addr, 0, sizeof(dev_addr));
	dev_addr.net = &init_net;
	dev_addr.sgid_attr = sgid_attr;

	FUNC0(&ctx.comp);
	ret = FUNC4((struct sockaddr *)&sgid_addr,
			      (struct sockaddr *)&dgid_addr, &dev_addr, 1000,
			      resolve_cb, true, &ctx);
	if (ret)
		return ret;

	FUNC5(&ctx.comp);

	ret = ctx.status;
	if (ret)
		return ret;

	FUNC1(dmac, dev_addr.dst_dev_addr, ETH_ALEN);
	*hoplimit = dev_addr.hoplimit;
	return 0;
}