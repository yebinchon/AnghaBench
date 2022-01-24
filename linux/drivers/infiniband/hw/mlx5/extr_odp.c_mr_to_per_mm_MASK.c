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
struct mlx5_ib_mr {int /*<<< orphan*/  umem; } ;
struct ib_ucontext_per_mm {int dummy; } ;
struct TYPE_2__ {struct ib_ucontext_per_mm* per_mm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_mr*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ib_ucontext_per_mm *FUNC3(struct mlx5_ib_mr *mr)
{
	if (FUNC0(!mr || !FUNC1(mr)))
		return NULL;

	return FUNC2(mr->umem)->per_mm;
}