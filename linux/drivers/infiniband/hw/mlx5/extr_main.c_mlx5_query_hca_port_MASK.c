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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_hca_vport_context {int cap_mask1; int /*<<< orphan*/  cap_mask2; int /*<<< orphan*/  init_type_reply; int /*<<< orphan*/  subnet_timeout; int /*<<< orphan*/  qkey_violation_counter; int /*<<< orphan*/  pkey_violation_counter; int /*<<< orphan*/  port_physical_state; int /*<<< orphan*/  vport_state; int /*<<< orphan*/  sm_sl; int /*<<< orphan*/  sm_lid; int /*<<< orphan*/  lmc; int /*<<< orphan*/  lid; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_port_attr {int port_cap_flags; int max_msg_sz; int /*<<< orphan*/  max_vl_num; void* active_mtu; void* max_mtu; int /*<<< orphan*/  active_speed; int /*<<< orphan*/  active_width; int /*<<< orphan*/  port_cap_flags2; int /*<<< orphan*/  init_type_reply; int /*<<< orphan*/  subnet_timeout; int /*<<< orphan*/  qkey_viol_cntr; int /*<<< orphan*/  bad_pkey_cntr; int /*<<< orphan*/  pkey_tbl_len; int /*<<< orphan*/  gid_tbl_len; int /*<<< orphan*/  phys_state; int /*<<< orphan*/  state; int /*<<< orphan*/  sm_sl; int /*<<< orphan*/  sm_lid; int /*<<< orphan*/  lmc; int /*<<< orphan*/  lid; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_PORT_CAP_MASK2_SUP ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gid_table_size ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_hca_vport_context*) ; 
 struct mlx5_hca_vport_context* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_max_msg ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_hca_vport_context*) ; 
 int FUNC6 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  pkey_table_size ; 
 struct mlx5_ib_dev* FUNC12 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct ib_device *ibdev, u8 port,
			       struct ib_port_attr *props)
{
	struct mlx5_ib_dev *dev = FUNC12(ibdev);
	struct mlx5_core_dev *mdev = dev->mdev;
	struct mlx5_hca_vport_context *rep;
	u16 max_mtu;
	u16 oper_mtu;
	int err;
	u8 ib_link_width_oper;
	u8 vl_hw_cap;

	rep = FUNC2(sizeof(*rep), GFP_KERNEL);
	if (!rep) {
		err = -ENOMEM;
		goto out;
	}

	/* props being zeroed by the caller, avoid zeroing it here */

	err = FUNC5(mdev, 0, port, 0, rep);
	if (err)
		goto out;

	props->lid		= rep->lid;
	props->lmc		= rep->lmc;
	props->sm_lid		= rep->sm_lid;
	props->sm_sl		= rep->sm_sl;
	props->state		= rep->vport_state;
	props->phys_state	= rep->port_physical_state;
	props->port_cap_flags	= rep->cap_mask1;
	props->gid_tbl_len	= FUNC3(FUNC0(mdev, gid_table_size));
	props->max_msg_sz	= 1 << FUNC0(mdev, log_max_msg);
	props->pkey_tbl_len	= FUNC11(FUNC0(mdev, pkey_table_size));
	props->bad_pkey_cntr	= rep->pkey_violation_counter;
	props->qkey_viol_cntr	= rep->qkey_violation_counter;
	props->subnet_timeout	= rep->subnet_timeout;
	props->init_type_reply	= rep->init_type_reply;

	if (props->port_cap_flags & IB_PORT_CAP_MASK2_SUP)
		props->port_cap_flags2 = rep->cap_mask2;

	err = FUNC7(mdev, &ib_link_width_oper, port);
	if (err)
		goto out;

	FUNC13(ibdev, ib_link_width_oper, &props->active_width);

	err = FUNC6(mdev, &props->active_speed, port);
	if (err)
		goto out;

	FUNC8(mdev, &max_mtu, port);

	props->max_mtu = FUNC4(max_mtu);

	FUNC9(mdev, &oper_mtu, port);

	props->active_mtu = FUNC4(oper_mtu);

	err = FUNC10(mdev, &vl_hw_cap, port);
	if (err)
		goto out;

	err = FUNC14(ibdev, vl_hw_cap,
				   &props->max_vl_num);
out:
	FUNC1(rep);
	return err;
}