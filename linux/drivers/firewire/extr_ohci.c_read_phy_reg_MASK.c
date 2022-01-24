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
typedef  int u32 ;
struct fw_ohci {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  OHCI1394_PhyControl ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int OHCI1394_PhyControl_ReadDone ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_ohci*,char*,int) ; 
 int FUNC5 (struct fw_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_ohci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct fw_ohci *ohci, int addr)
{
	u32 val;
	int i;

	FUNC6(ohci, OHCI1394_PhyControl, FUNC0(addr));
	for (i = 0; i < 3 + 100; i++) {
		val = FUNC5(ohci, OHCI1394_PhyControl);
		if (!~val)
			return -ENODEV; /* Card was ejected. */

		if (val & OHCI1394_PhyControl_ReadDone)
			return FUNC1(val);

		/*
		 * Try a few times without waiting.  Sleeping is necessary
		 * only when the link/PHY interface is busy.
		 */
		if (i >= 3)
			FUNC3(1);
	}
	FUNC4(ohci, "failed to read phy reg %d\n", addr);
	FUNC2();

	return -EBUSY;
}