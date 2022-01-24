#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct mlx4_update_qp_params {int smac_index; } ;
struct TYPE_6__ {scalar_t__ smac; int smac_port; int smac_index; } ;
struct TYPE_5__ {int /*<<< orphan*/  qpn; } ;
struct mlx4_ib_qp {int /*<<< orphan*/  mutex; TYPE_3__ pri; TYPE_2__ mqp; } ;
struct TYPE_4__ {int /*<<< orphan*/ * mac; } ;
struct mlx4_ib_dev {int /*<<< orphan*/ * qp1_proxy_lock; int /*<<< orphan*/  dev; struct mlx4_ib_qp** qp1_proxy; TYPE_1__ iboe; } ;

/* Variables and functions */
 scalar_t__ MLX4_IB_INVALID_MAC ; 
 int /*<<< orphan*/  MLX4_UPDATE_QP_SMAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  dev_base_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx4_update_qp_params*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct mlx4_ib_dev *ibdev,
			       struct net_device *dev,
			       int port)
{
	u64 new_smac = 0;
	u64 release_mac = MLX4_IB_INVALID_MAC;
	struct mlx4_ib_qp *qp;

	FUNC8(&dev_base_lock);
	new_smac = FUNC2(dev->dev_addr);
	FUNC9(&dev_base_lock);

	FUNC0(&ibdev->iboe.mac[port - 1], new_smac);

	/* no need for update QP1 and mac registration in non-SRIOV */
	if (!FUNC1(ibdev->dev))
		return;

	FUNC6(&ibdev->qp1_proxy_lock[port - 1]);
	qp = ibdev->qp1_proxy[port - 1];
	if (qp) {
		int new_smac_index;
		u64 old_smac;
		struct mlx4_update_qp_params update_params;

		FUNC6(&qp->mutex);
		old_smac = qp->pri.smac;
		if (new_smac == old_smac)
			goto unlock;

		new_smac_index = FUNC3(ibdev->dev, port, new_smac);

		if (new_smac_index < 0)
			goto unlock;

		update_params.smac_index = new_smac_index;
		if (FUNC5(ibdev->dev, qp->mqp.qpn, MLX4_UPDATE_QP_SMAC,
				   &update_params)) {
			release_mac = new_smac;
			goto unlock;
		}
		/* if old port was zero, no mac was yet registered for this QP */
		if (qp->pri.smac_port)
			release_mac = old_smac;
		qp->pri.smac = new_smac;
		qp->pri.smac_port = port;
		qp->pri.smac_index = new_smac_index;
	}

unlock:
	if (release_mac != MLX4_IB_INVALID_MAC)
		FUNC4(ibdev->dev, port, release_mac);
	if (qp)
		FUNC7(&qp->mutex);
	FUNC7(&ibdev->qp1_proxy_lock[port - 1]);
}