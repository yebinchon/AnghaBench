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
struct usnic_ib_ucontext {int /*<<< orphan*/  link; int /*<<< orphan*/  qp_grp_list; } ;
struct usnic_ib_dev {int /*<<< orphan*/  usdev_lock; int /*<<< orphan*/  ctx_list; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {struct ib_device* device; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct usnic_ib_ucontext* FUNC4 (struct ib_ucontext*) ; 
 struct usnic_ib_dev* FUNC5 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct ib_ucontext *uctx, struct ib_udata *udata)
{
	struct ib_device *ibdev = uctx->device;
	struct usnic_ib_ucontext *context = FUNC4(uctx);
	struct usnic_ib_dev *us_ibdev = FUNC5(ibdev);
	FUNC6("\n");

	FUNC0(&context->qp_grp_list);
	FUNC2(&us_ibdev->usdev_lock);
	FUNC1(&context->link, &us_ibdev->ctx_list);
	FUNC3(&us_ibdev->usdev_lock);

	return 0;
}