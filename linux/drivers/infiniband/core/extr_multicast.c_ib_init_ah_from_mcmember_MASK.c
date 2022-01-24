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
typedef  int /*<<< orphan*/  u8 ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct net_device {int dummy; } ;
struct ib_sa_mcmember_rec {int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  flow_label; int /*<<< orphan*/  mgid; int /*<<< orphan*/  rate; int /*<<< orphan*/  sl; int /*<<< orphan*/  mlid; int /*<<< orphan*/  port_gid; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ib_gid_attr const*) ; 
 int FUNC1 (struct ib_gid_attr const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 struct ib_gid_attr* FUNC10 (struct ib_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct rdma_ah_attr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_gid_attr const*) ; 
 scalar_t__ FUNC12 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ib_device*,int /*<<< orphan*/ ) ; 

int FUNC14(struct ib_device *device, u8 port_num,
			     struct ib_sa_mcmember_rec *rec,
			     struct net_device *ndev,
			     enum ib_gid_type gid_type,
			     struct rdma_ah_attr *ah_attr)
{
	const struct ib_gid_attr *sgid_attr;

	/* GID table is not based on the netdevice for IB link layer,
	 * so ignore ndev during search.
	 */
	if (FUNC12(device, port_num))
		ndev = NULL;
	else if (!FUNC13(device, port_num))
		return -EINVAL;

	sgid_attr = FUNC10(device, &rec->port_gid,
					  gid_type, port_num, ndev);
	if (FUNC0(sgid_attr))
		return FUNC1(sgid_attr);

	FUNC4(ah_attr, 0, sizeof(*ah_attr));
	ah_attr->type = FUNC5(device, port_num);

	FUNC6(ah_attr, FUNC2(rec->mlid));
	FUNC8(ah_attr, rec->sl);
	FUNC7(ah_attr, port_num);
	FUNC9(ah_attr, rec->rate);
	FUNC11(ah_attr, &rec->mgid,
				FUNC3(rec->flow_label),
				rec->hop_limit,	rec->traffic_class,
				sgid_attr);
	return 0;
}