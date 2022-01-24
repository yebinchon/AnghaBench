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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct mthca_qp_path {int g_mylmc; int static_rate; int mgid_index; int /*<<< orphan*/  rgid; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sl_tclass_flowlabel; int /*<<< orphan*/  rlid; int /*<<< orphan*/  port_pkey; } ;
struct TYPE_2__ {scalar_t__ num_ports; int gid_table_len; } ;
struct mthca_dev {TYPE_1__ limits; int /*<<< orphan*/  ib_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct mthca_dev *dev,
			    struct rdma_ah_attr *ah_attr,
			    struct mthca_qp_path *path)
{
	u8 port_num = (FUNC1(path->port_pkey) >> 24) & 0x3;

	FUNC2(ah_attr, 0, sizeof(*ah_attr));

	if (port_num == 0 || port_num > dev->limits.num_ports)
		return;
	ah_attr->type = FUNC4(&dev->ib_dev, port_num);
	FUNC9(ah_attr, port_num);

	FUNC6(ah_attr, FUNC0(path->rlid));
	FUNC10(ah_attr, FUNC1(path->sl_tclass_flowlabel) >> 28);
	FUNC8(ah_attr, path->g_mylmc & 0x7f);
	FUNC11(ah_attr,
				FUNC3(dev,
						 path->static_rate & 0xf,
						 port_num));
	if (path->g_mylmc & (1 << 7)) {
		u32 tc_fl = FUNC1(path->sl_tclass_flowlabel);

		FUNC7(ah_attr, NULL,
				tc_fl & 0xfffff,
				path->mgid_index &
				(dev->limits.gid_table_len - 1),
				path->hop_limit,
				(tc_fl >> 20) & 0xff);
		FUNC5(ah_attr, path->rgid);
	}
}