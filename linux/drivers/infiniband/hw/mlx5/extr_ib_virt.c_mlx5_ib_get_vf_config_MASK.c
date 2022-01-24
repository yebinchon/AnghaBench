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
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_hca_vport_context {int /*<<< orphan*/  policy; } ;
struct mlx5_core_dev {int dummy; } ;
struct ifla_vf_info {int /*<<< orphan*/  linkstate; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  __IFLA_VF_LINK_STATE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_hca_vport_context*) ; 
 struct mlx5_hca_vport_context* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifla_vf_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*,int,int) ; 
 int FUNC4 (struct mlx5_core_dev*,int,int,int,struct mlx5_hca_vport_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC6 (struct ib_device*) ; 

int FUNC7(struct ib_device *device, int vf, u8 port,
			  struct ifla_vf_info *info)
{
	struct mlx5_ib_dev *dev = FUNC6(device);
	struct mlx5_core_dev *mdev = dev->mdev;
	struct mlx5_hca_vport_context *rep;
	int err;

	rep = FUNC1(sizeof(*rep), GFP_KERNEL);
	if (!rep)
		return -ENOMEM;

	err = FUNC4(mdev, 1, 1,  vf + 1, rep);
	if (err) {
		FUNC3(dev, "failed to query port policy for vf %d (%d)\n",
			     vf, err);
		goto free;
	}
	FUNC2(info, 0, sizeof(*info));
	info->linkstate = FUNC5(rep->policy);
	if (info->linkstate == __IFLA_VF_LINK_STATE_MAX)
		err = -EINVAL;

free:
	FUNC0(rep);
	return err;
}