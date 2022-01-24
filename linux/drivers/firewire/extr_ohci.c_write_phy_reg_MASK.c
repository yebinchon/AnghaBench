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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int OHCI1394_PhyControl_WritePending ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_ohci const*,char*,int,int) ; 
 int FUNC4 (struct fw_ohci const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_ohci const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct fw_ohci *ohci, int addr, u32 val)
{
	int i;

	FUNC5(ohci, OHCI1394_PhyControl,
		  FUNC0(addr, val));
	for (i = 0; i < 3 + 100; i++) {
		val = FUNC4(ohci, OHCI1394_PhyControl);
		if (!~val)
			return -ENODEV; /* Card was ejected. */

		if (!(val & OHCI1394_PhyControl_WritePending))
			return 0;

		if (i >= 3)
			FUNC2(1);
	}
	FUNC3(ohci, "failed to write phy reg %d, val %u\n", addr, val);
	FUNC1();

	return -EBUSY;
}