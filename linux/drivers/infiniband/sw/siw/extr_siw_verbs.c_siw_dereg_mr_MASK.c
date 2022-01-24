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
struct siw_mr {int /*<<< orphan*/  mem; } ;
struct siw_device {int /*<<< orphan*/  num_mr; } ;
struct ib_udata {int dummy; } ;
struct ib_mr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_mr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_mr*) ; 
 struct siw_device* FUNC4 (int /*<<< orphan*/ ) ; 
 struct siw_mr* FUNC5 (struct ib_mr*) ; 

int FUNC6(struct ib_mr *base_mr, struct ib_udata *udata)
{
	struct siw_mr *mr = FUNC5(base_mr);
	struct siw_device *sdev = FUNC4(base_mr->device);

	FUNC2(mr->mem, "deregister MR\n");

	FUNC0(&sdev->num_mr);

	FUNC3(mr);
	FUNC1(mr, rcu);

	return 0;
}