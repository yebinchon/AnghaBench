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
struct uverbs_attr_bundle {int dummy; } ;
struct mlx5_ib_ucontext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uverbs_attr_bundle const*) ; 
 struct mlx5_ib_ucontext* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx5_ib_ucontext *
FUNC2(const struct uverbs_attr_bundle *attrs)
{
	return FUNC1(FUNC0(attrs));
}