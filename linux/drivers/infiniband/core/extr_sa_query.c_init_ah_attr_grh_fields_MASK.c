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
struct sa_path_rec {int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  flow_label; int /*<<< orphan*/  dgid; int /*<<< orphan*/  sgid; } ;
struct rdma_ah_attr {int dummy; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ib_gid_attr const*) ; 
 int FUNC1 (struct ib_gid_attr const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ib_gid_attr* FUNC3 (struct ib_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_gid_attr const*) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_gid_attr const*) ; 
 int FUNC6 (struct sa_path_rec*) ; 

__attribute__((used)) static int FUNC7(struct ib_device *device, u8 port_num,
				   struct sa_path_rec *rec,
				   struct rdma_ah_attr *ah_attr,
				   const struct ib_gid_attr *gid_attr)
{
	enum ib_gid_type type = FUNC6(rec);

	if (!gid_attr) {
		gid_attr = FUNC3(device, &rec->sgid, type,
						 port_num, NULL);
		if (FUNC0(gid_attr))
			return FUNC1(gid_attr);
	} else
		FUNC4(gid_attr);

	FUNC5(ah_attr, &rec->dgid,
				FUNC2(rec->flow_label),
				rec->hop_limit,	rec->traffic_class,
				gid_attr);
	return 0;
}