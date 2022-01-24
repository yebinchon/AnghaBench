#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union ib_gid {int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_flow_reg_id {scalar_t__ mirror; scalar_t__ id; } ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct mlx4_ib_steering {int /*<<< orphan*/  list; struct mlx4_flow_reg_id reg_id; TYPE_2__ gid; } ;
struct mlx4_ib_qp {int port; int flags; int /*<<< orphan*/  mqp; int /*<<< orphan*/  mutex; int /*<<< orphan*/  steering_rules; } ;
struct mlx4_ib_dev {struct mlx4_dev* dev; } ;
struct TYPE_3__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
typedef  enum mlx4_protocol { ____Placeholder_mlx4_protocol } mlx4_protocol ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK ; 
 int MLX4_PROT_IB_IPV6 ; 
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ; 
 int FUNC0 (struct ib_qp*,union ib_gid*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_steering*) ; 
 struct mlx4_ib_steering* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct mlx4_dev*) ; 
 int FUNC6 (struct mlx4_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 struct mlx4_ib_dev* FUNC11 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_qp* FUNC12 (struct ib_qp*) ; 

__attribute__((used)) static int FUNC13(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
	int err;
	struct mlx4_ib_dev *mdev = FUNC11(ibqp->device);
	struct mlx4_dev	*dev = mdev->dev;
	struct mlx4_ib_qp *mqp = FUNC12(ibqp);
	struct mlx4_ib_steering *ib_steering = NULL;
	enum mlx4_protocol prot = MLX4_PROT_IB_IPV6;
	struct mlx4_flow_reg_id	reg_id;

	if (mdev->dev->caps.steering_mode ==
	    MLX4_STEERING_MODE_DEVICE_MANAGED) {
		ib_steering = FUNC2(sizeof(*ib_steering), GFP_KERNEL);
		if (!ib_steering)
			return -ENOMEM;
	}

	err = FUNC6(mdev->dev, &mqp->mqp, gid->raw, mqp->port,
				    !!(mqp->flags &
				       MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK),
				    prot, &reg_id.id);
	if (err) {
		FUNC10("multicast attach op failed, err %d\n", err);
		goto err_malloc;
	}

	reg_id.mirror = 0;
	if (FUNC5(dev)) {
		err = FUNC6(mdev->dev, &mqp->mqp, gid->raw,
					    (mqp->port == 1) ? 2 : 1,
					    !!(mqp->flags &
					    MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK),
					    prot, &reg_id.mirror);
		if (err)
			goto err_add;
	}

	err = FUNC0(ibqp, gid);
	if (err)
		goto err_add;

	if (ib_steering) {
		FUNC4(ib_steering->gid.raw, gid->raw, 16);
		ib_steering->reg_id = reg_id;
		FUNC8(&mqp->mutex);
		FUNC3(&ib_steering->list, &mqp->steering_rules);
		FUNC9(&mqp->mutex);
	}
	return 0;

err_add:
	FUNC7(mdev->dev, &mqp->mqp, gid->raw,
			      prot, reg_id.id);
	if (reg_id.mirror)
		FUNC7(mdev->dev, &mqp->mqp, gid->raw,
				      prot, reg_id.mirror);
err_malloc:
	FUNC1(ib_steering);

	return err;
}