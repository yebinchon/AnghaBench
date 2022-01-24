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
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct mlx5_hca_vport_context {int /*<<< orphan*/  member_0; } ;
struct ib_port_immutable {int /*<<< orphan*/  max_mad_size; int /*<<< orphan*/  core_cap_flags; int /*<<< orphan*/  gid_tbl_len; int /*<<< orphan*/  pkey_tbl_len; } ;
struct ib_port_attr {int /*<<< orphan*/  gid_tbl_len; int /*<<< orphan*/  pkey_tbl_len; } ;
struct ib_device {int dummy; } ;
typedef  enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;

/* Variables and functions */
 int IB_LINK_LAYER_INFINIBAND ; 
 int /*<<< orphan*/  IB_MGMT_MAD_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,struct mlx5_hca_vport_context*) ; 
 int FUNC2 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_hca_vport_context*) ; 
 int /*<<< orphan*/  roce ; 
 struct mlx5_ib_dev* FUNC5 (struct ib_device*) ; 

__attribute__((used)) static int FUNC6(struct ib_device *ibdev, u8 port_num,
			       struct ib_port_immutable *immutable)
{
	struct ib_port_attr attr;
	struct mlx5_ib_dev *dev = FUNC5(ibdev);
	enum rdma_link_layer ll = FUNC3(ibdev, port_num);
	struct mlx5_hca_vport_context rep = {0};
	int err;

	err = FUNC2(ibdev, port_num, &attr);
	if (err)
		return err;

	if (ll == IB_LINK_LAYER_INFINIBAND) {
		err = FUNC4(dev->mdev, 0, port_num, 0,
						   &rep);
		if (err)
			return err;
	}

	immutable->pkey_tbl_len = attr.pkey_tbl_len;
	immutable->gid_tbl_len = attr.gid_tbl_len;
	immutable->core_cap_flags = FUNC1(ibdev, &rep);
	if ((ll == IB_LINK_LAYER_INFINIBAND) || FUNC0(dev->mdev, roce))
		immutable->max_mad_size = IB_MGMT_MAD_SIZE;

	return 0;
}