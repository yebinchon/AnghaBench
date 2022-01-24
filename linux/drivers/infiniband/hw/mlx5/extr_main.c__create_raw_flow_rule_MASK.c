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
struct mlx5_ib_flow_prio {struct mlx5_flow_table* flow_table; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {void* match_params; } ;
struct mlx5_ib_flow_matcher {int mask_len; int /*<<< orphan*/  match_criteria_enable; TYPE_1__ matcher_mask; } ;
struct mlx5_ib_flow_handler {struct mlx5_ib_dev* dev; struct mlx5_ib_flow_prio* prio; int /*<<< orphan*/  rule; int /*<<< orphan*/  list; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_context {int dummy; } ;
struct mlx5_flow_spec {struct mlx5_flow_context flow_context; int /*<<< orphan*/  match_criteria_enable; int /*<<< orphan*/  match_criteria; int /*<<< orphan*/  match_value; } ;
struct mlx5_flow_destination {int dummy; } ;
struct mlx5_flow_act {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlx5_ib_flow_handler* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_flow_handler*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_flow_spec*) ; 
 struct mlx5_flow_spec* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_flow_handler* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_flow_table*,struct mlx5_flow_spec*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int) ; 

__attribute__((used)) static struct mlx5_ib_flow_handler *
FUNC10(struct mlx5_ib_dev *dev,
		      struct mlx5_ib_flow_prio *ft_prio,
		      struct mlx5_flow_destination *dst,
		      struct mlx5_ib_flow_matcher  *fs_matcher,
		      struct mlx5_flow_context *flow_context,
		      struct mlx5_flow_act *flow_act,
		      void *cmd_in, int inlen,
		      int dst_num)
{
	struct mlx5_ib_flow_handler *handler;
	struct mlx5_flow_spec *spec;
	struct mlx5_flow_table *ft = ft_prio->flow_table;
	int err = 0;

	spec = FUNC6(sizeof(*spec), GFP_KERNEL);
	handler = FUNC7(sizeof(*handler), GFP_KERNEL);
	if (!handler || !spec) {
		err = -ENOMEM;
		goto free;
	}

	FUNC1(&handler->list);

	FUNC8(spec->match_value, cmd_in, inlen);
	FUNC8(spec->match_criteria, fs_matcher->matcher_mask.match_params,
	       fs_matcher->mask_len);
	spec->match_criteria_enable = fs_matcher->match_criteria_enable;
	spec->flow_context = *flow_context;

	handler->rule = FUNC9(ft, spec,
					    flow_act, dst, dst_num);

	if (FUNC2(handler->rule)) {
		err = FUNC3(handler->rule);
		goto free;
	}

	ft_prio->refcount++;
	handler->prio = ft_prio;
	handler->dev = dev;
	ft_prio->flow_table = ft;

free:
	if (err)
		FUNC4(handler);
	FUNC5(spec);
	return err ? FUNC0(err) : handler;
}