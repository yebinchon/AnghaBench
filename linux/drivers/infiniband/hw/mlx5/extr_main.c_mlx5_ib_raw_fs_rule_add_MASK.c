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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_ib_flow_prio {struct mlx5_ib_flow_matcher* flow_matcher; } ;
struct mlx5_ib_flow_matcher {scalar_t__ flow_type; scalar_t__ priority; int /*<<< orphan*/  usecnt; } ;
struct mlx5_ib_flow_handler {struct mlx5_ib_flow_matcher* flow_matcher; } ;
struct mlx5_ib_dev {TYPE_1__* flow_db; } ;
struct mlx5_flow_destination {int type; int tir_num; int ft_num; int /*<<< orphan*/  counter_id; } ;
struct mlx5_flow_context {int dummy; } ;
struct mlx5_flow_act {int action; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct mlx5_ib_flow_prio* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mlx5_ib_flow_prio*) ; 
 int MLX5_FLOW_CONTEXT_ACTION_ALLOW ; 
 int MLX5_FLOW_CONTEXT_ACTION_COUNT ; 
 int MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ; 
 int MLX5_FLOW_DESTINATION_TYPE_COUNTER ; 
 int MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE ; 
 int MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE_NUM ; 
 int MLX5_FLOW_DESTINATION_TYPE_PORT ; 
 int MLX5_FLOW_DESTINATION_TYPE_TIR ; 
 scalar_t__ MLX5_IB_FLOW_LAST_PRIO ; 
 scalar_t__ MLX5_IB_FLOW_TYPE_NORMAL ; 
 int FUNC2 (struct mlx5_ib_flow_prio*) ; 
 struct mlx5_ib_flow_prio* FUNC3 (struct mlx5_ib_dev*,struct mlx5_ib_flow_prio*,struct mlx5_flow_destination*,struct mlx5_ib_flow_matcher*,struct mlx5_flow_context*,struct mlx5_flow_act*,void*,int,int) ; 
 struct mlx5_ib_flow_prio* FUNC4 (struct mlx5_ib_dev*,struct mlx5_ib_flow_matcher*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx5_flow_destination* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_flow_destination*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_ib_dev*,struct mlx5_ib_flow_prio*,int) ; 
 int FUNC11 (struct mlx5_ib_flow_matcher*,void*) ; 

struct mlx5_ib_flow_handler *
FUNC12(struct mlx5_ib_dev *dev,
			struct mlx5_ib_flow_matcher *fs_matcher,
			struct mlx5_flow_context *flow_context,
			struct mlx5_flow_act *flow_act,
			u32 counter_id,
			void *cmd_in, int inlen, int dest_id,
			int dest_type)
{
	struct mlx5_flow_destination *dst;
	struct mlx5_ib_flow_prio *ft_prio;
	struct mlx5_ib_flow_handler *handler;
	int dst_num = 0;
	bool mcast;
	int err;

	if (fs_matcher->flow_type != MLX5_IB_FLOW_TYPE_NORMAL)
		return FUNC0(-EOPNOTSUPP);

	if (fs_matcher->priority > MLX5_IB_FLOW_LAST_PRIO)
		return FUNC0(-ENOMEM);

	dst = FUNC6(2, sizeof(*dst), GFP_KERNEL);
	if (!dst)
		return FUNC0(-ENOMEM);

	mcast = FUNC11(fs_matcher, cmd_in);
	FUNC8(&dev->flow_db->lock);

	ft_prio = FUNC4(dev, fs_matcher, mcast);
	if (FUNC1(ft_prio)) {
		err = FUNC2(ft_prio);
		goto unlock;
	}

	if (dest_type == MLX5_FLOW_DESTINATION_TYPE_TIR) {
		dst[dst_num].type = dest_type;
		dst[dst_num].tir_num = dest_id;
		flow_act->action |= MLX5_FLOW_CONTEXT_ACTION_FWD_DEST;
	} else if (dest_type == MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE) {
		dst[dst_num].type = MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE_NUM;
		dst[dst_num].ft_num = dest_id;
		flow_act->action |= MLX5_FLOW_CONTEXT_ACTION_FWD_DEST;
	} else {
		dst[dst_num].type = MLX5_FLOW_DESTINATION_TYPE_PORT;
		flow_act->action |= MLX5_FLOW_CONTEXT_ACTION_ALLOW;
	}

	dst_num++;

	if (flow_act->action & MLX5_FLOW_CONTEXT_ACTION_COUNT) {
		dst[dst_num].type = MLX5_FLOW_DESTINATION_TYPE_COUNTER;
		dst[dst_num].counter_id = counter_id;
		dst_num++;
	}

	handler = FUNC3(dev, ft_prio, dst, fs_matcher,
					flow_context, flow_act,
					cmd_in, inlen, dst_num);

	if (FUNC1(handler)) {
		err = FUNC2(handler);
		goto destroy_ft;
	}

	FUNC9(&dev->flow_db->lock);
	FUNC5(&fs_matcher->usecnt);
	handler->flow_matcher = fs_matcher;

	FUNC7(dst);

	return handler;

destroy_ft:
	FUNC10(dev, ft_prio, false);
unlock:
	FUNC9(&dev->flow_db->lock);
	FUNC7(dst);

	return FUNC0(err);
}