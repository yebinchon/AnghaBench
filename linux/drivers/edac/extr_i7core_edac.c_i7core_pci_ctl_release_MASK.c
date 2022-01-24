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
struct i7core_pvt {int /*<<< orphan*/ * i7core_pci; TYPE_1__* i7core_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct i7core_pvt *pvt)
{
	if (FUNC2(pvt->i7core_pci))
		FUNC0(pvt->i7core_pci);
	else
		FUNC1(KERN_ERR,
				"Couldn't find mem_ctl_info for socket %d\n",
				pvt->i7core_dev->socket);
	pvt->i7core_pci = NULL;
}