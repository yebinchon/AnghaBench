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
struct usnic_ib_mr {TYPE_1__* umem; } ;
struct ib_udata {int dummy; } ;
struct ib_mr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  length; int /*<<< orphan*/  va; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usnic_ib_mr*) ; 
 struct usnic_ib_mr* FUNC1 (struct ib_mr*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(struct ib_mr *ibmr, struct ib_udata *udata)
{
	struct usnic_ib_mr *mr = FUNC1(ibmr);

	FUNC2("va 0x%lx length 0x%zx\n", mr->umem->va, mr->umem->length);

	FUNC3(mr->umem);
	FUNC0(mr);
	return 0;
}