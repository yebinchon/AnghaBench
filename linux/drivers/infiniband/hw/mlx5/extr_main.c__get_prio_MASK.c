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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_ib_flow_prio {scalar_t__ refcount; struct mlx5_flow_table* flow_table; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;

/* Variables and functions */
 struct mlx5_ib_flow_prio* FUNC0 (struct mlx5_flow_table*) ; 
 scalar_t__ FUNC1 (struct mlx5_flow_table*) ; 
 struct mlx5_flow_table* FUNC2 (struct mlx5_flow_namespace*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx5_ib_flow_prio *FUNC3(struct mlx5_flow_namespace *ns,
					   struct mlx5_ib_flow_prio *prio,
					   int priority,
					   int num_entries, int num_groups,
					   u32 flags)
{
	struct mlx5_flow_table *ft;

	ft = FUNC2(ns, priority,
						 num_entries,
						 num_groups,
						 0, flags);
	if (FUNC1(ft))
		return FUNC0(ft);

	prio->flow_table = ft;
	prio->refcount = 0;
	return prio;
}