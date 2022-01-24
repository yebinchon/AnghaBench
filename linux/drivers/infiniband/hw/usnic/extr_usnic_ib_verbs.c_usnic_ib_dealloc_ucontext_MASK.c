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
struct usnic_ib_dev {int /*<<< orphan*/  usdev_lock; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct usnic_ib_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct usnic_ib_ucontext* FUNC6 (struct ib_ucontext*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(struct ib_ucontext *ibcontext)
{
	struct usnic_ib_ucontext *context = FUNC6(ibcontext);
	struct usnic_ib_dev *us_ibdev = FUNC5(ibcontext->device);
	FUNC7("\n");

	FUNC3(&us_ibdev->usdev_lock);
	FUNC0(!FUNC2(&context->qp_grp_list));
	FUNC1(&context->link);
	FUNC4(&us_ibdev->usdev_lock);
}