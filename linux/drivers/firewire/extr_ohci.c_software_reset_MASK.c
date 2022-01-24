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
 int /*<<< orphan*/  OHCI1394_HCControlSet ; 
 int OHCI1394_HCControl_softReset ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct fw_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_ohci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct fw_ohci *ohci)
{
	u32 val;
	int i;

	FUNC2(ohci, OHCI1394_HCControlSet, OHCI1394_HCControl_softReset);
	for (i = 0; i < 500; i++) {
		val = FUNC1(ohci, OHCI1394_HCControlSet);
		if (!~val)
			return -ENODEV; /* Card was ejected. */

		if (!(val & OHCI1394_HCControl_softReset))
			return 0;

		FUNC0(1);
	}

	return -EBUSY;
}