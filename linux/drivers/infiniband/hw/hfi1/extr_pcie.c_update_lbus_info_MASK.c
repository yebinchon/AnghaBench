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
typedef  int /*<<< orphan*/  u16 ;
struct hfi1_devdata {int lbus_width; int lbus_speed; int /*<<< orphan*/  lbus_info; int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_LNKSTA ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int,int) ; 

__attribute__((used)) static void FUNC5(struct hfi1_devdata *dd)
{
	u16 linkstat;
	int ret;

	ret = FUNC3(dd->pcidev, PCI_EXP_LNKSTA, &linkstat);
	if (ret) {
		FUNC0(dd, "Unable to read from PCI config\n");
		return;
	}

	dd->lbus_width = FUNC2(linkstat);
	dd->lbus_speed = FUNC1(linkstat);
	FUNC4(dd->lbus_info, sizeof(dd->lbus_info),
		 "PCIe,%uMHz,x%u", dd->lbus_speed, dd->lbus_width);
}