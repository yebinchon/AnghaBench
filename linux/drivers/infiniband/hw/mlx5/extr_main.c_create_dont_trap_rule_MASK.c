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
struct mlx5_ib_flow_prio {int /*<<< orphan*/  refcount; } ;
struct mlx5_ib_flow_handler {int /*<<< orphan*/  list; int /*<<< orphan*/  rule; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_flow_destination {int dummy; } ;
struct ib_flow_attr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_ib_flow_handler*) ; 
 struct mlx5_ib_flow_handler* FUNC1 (struct mlx5_ib_dev*,struct mlx5_ib_flow_prio*,struct ib_flow_attr*,struct mlx5_flow_destination*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_flow_handler*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx5_ib_flow_handler *FUNC5(struct mlx5_ib_dev *dev,
							  struct mlx5_ib_flow_prio *ft_prio,
							  struct ib_flow_attr *flow_attr,
							  struct mlx5_flow_destination *dst)
{
	struct mlx5_ib_flow_handler *handler_dst = NULL;
	struct mlx5_ib_flow_handler *handler = NULL;

	handler = FUNC1(dev, ft_prio, flow_attr, NULL);
	if (!FUNC0(handler)) {
		handler_dst = FUNC1(dev, ft_prio,
					       flow_attr, dst);
		if (FUNC0(handler_dst)) {
			FUNC4(handler->rule);
			ft_prio->refcount--;
			FUNC2(handler);
			handler = handler_dst;
		} else {
			FUNC3(&handler_dst->list, &handler->list);
		}
	}

	return handler;
}