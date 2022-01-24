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
typedef  int u32 ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct mlx5_qp_path {scalar_t__ port; int dci_cfi_prio_sl; int grh_mlid; int /*<<< orphan*/  rgid; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  mgid_index; int /*<<< orphan*/  tclass_flowlabel; scalar_t__ static_rate; int /*<<< orphan*/  rlid; } ;
struct mlx5_ib_dev {scalar_t__ num_ports; int /*<<< orphan*/  ib_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_ah_attr*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct mlx5_ib_dev *ibdev,
			    struct rdma_ah_attr *ah_attr,
			    struct mlx5_qp_path *path)
{

	FUNC2(ah_attr, 0, sizeof(*ah_attr));

	if (!path->port || path->port > ibdev->num_ports)
		return;

	ah_attr->type = FUNC3(&ibdev->ib_dev, path->port);

	FUNC8(ah_attr, path->port);
	FUNC9(ah_attr, path->dci_cfi_prio_sl & 0xf);

	FUNC5(ah_attr, FUNC0(path->rlid));
	FUNC7(ah_attr, path->grh_mlid & 0x7f);
	FUNC10(ah_attr,
				path->static_rate ? path->static_rate - 5 : 0);
	if (path->grh_mlid & (1 << 7)) {
		u32 tc_fl = FUNC1(path->tclass_flowlabel);

		FUNC6(ah_attr, NULL,
				tc_fl & 0xfffff,
				path->mgid_index,
				path->hop_limit,
				(tc_fl >> 20) & 0xff);
		FUNC4(ah_attr, path->rgid);
	}
}