#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ib_xrcd {int /*<<< orphan*/  device; } ;
struct ib_udata {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  xrcdn; int /*<<< orphan*/  pd; int /*<<< orphan*/  cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_xrcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct ib_xrcd*) ; 

__attribute__((used)) static int FUNC6(struct ib_xrcd *xrcd, struct ib_udata *udata)
{
	FUNC1(FUNC5(xrcd)->cq);
	FUNC0(FUNC5(xrcd)->pd);
	FUNC3(FUNC4(xrcd->device)->dev, FUNC5(xrcd)->xrcdn);
	FUNC2(xrcd);

	return 0;
}