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
typedef  int /*<<< orphan*/  u8 ;
struct ib_flow_action {int dummy; } ;
struct TYPE_2__ {struct mlx5_ib_dev* dev; int /*<<< orphan*/  sub_type; int /*<<< orphan*/  modify_hdr; } ;
struct mlx5_ib_flow_action {struct ib_flow_action ib_action; TYPE_1__ flow_action_raw; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
typedef  enum mlx5_ib_uapi_flow_table_type { ____Placeholder_mlx5_ib_uapi_flow_table_type } mlx5_ib_uapi_flow_table_type ;
typedef  enum mlx5_flow_namespace_type { ____Placeholder_mlx5_flow_namespace_type } mlx5_flow_namespace_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_flow_action* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_IB_FLOW_ACTION_MODIFY_HEADER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_flow_action*) ; 
 struct mlx5_ib_flow_action* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static struct ib_flow_action *
FUNC7(struct mlx5_ib_dev *dev,
			     enum mlx5_ib_uapi_flow_table_type ft_type,
			     u8 num_actions, void *in)
{
	enum mlx5_flow_namespace_type namespace;
	struct mlx5_ib_flow_action *maction;
	int ret;

	ret = FUNC5(ft_type, &namespace);
	if (ret)
		return FUNC0(-EINVAL);

	maction = FUNC4(sizeof(*maction), GFP_KERNEL);
	if (!maction)
		return FUNC0(-ENOMEM);

	maction->flow_action_raw.modify_hdr =
		FUNC6(dev->mdev, namespace, num_actions, in);

	if (FUNC1(maction->flow_action_raw.modify_hdr)) {
		ret = FUNC2(maction->flow_action_raw.modify_hdr);
		FUNC3(maction);
		return FUNC0(ret);
	}
	maction->flow_action_raw.sub_type =
		MLX5_IB_FLOW_ACTION_MODIFY_HEADER;
	maction->flow_action_raw.dev = dev;

	return &maction->ib_action;
}