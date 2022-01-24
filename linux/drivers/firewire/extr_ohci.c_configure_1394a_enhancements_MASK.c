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
struct fw_ohci {int quirks; } ;

/* Variables and functions */
 int OHCI1394_HCControlClear ; 
 int OHCI1394_HCControlSet ; 
 int OHCI1394_HCControl_aPhyEnhanceEnable ; 
 int OHCI1394_HCControl_programPhyEnable ; 
 int PHY_ENABLE_ACCEL ; 
 int PHY_ENABLE_MULTI ; 
 int PHY_EXTENDED_REGISTERS ; 
 int QUIRK_NO_1394A ; 
 int FUNC0 (struct fw_ohci*,int,int) ; 
 int FUNC1 (struct fw_ohci*,int) ; 
 int FUNC2 (struct fw_ohci*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_ohci*,int,int) ; 
 int FUNC4 (struct fw_ohci*,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct fw_ohci *ohci)
{
	bool enable_1394a;
	int ret, clear, set, offset;

	/* Check if the driver should configure link and PHY. */
	if (!(FUNC2(ohci, OHCI1394_HCControlSet) &
	      OHCI1394_HCControl_programPhyEnable))
		return 0;

	/* Paranoia: check whether the PHY supports 1394a, too. */
	enable_1394a = false;
	ret = FUNC1(ohci, 2);
	if (ret < 0)
		return ret;
	if ((ret & PHY_EXTENDED_REGISTERS) == PHY_EXTENDED_REGISTERS) {
		ret = FUNC0(ohci, 1, 8);
		if (ret < 0)
			return ret;
		if (ret >= 1)
			enable_1394a = true;
	}

	if (ohci->quirks & QUIRK_NO_1394A)
		enable_1394a = false;

	/* Configure PHY and link consistently. */
	if (enable_1394a) {
		clear = 0;
		set = PHY_ENABLE_ACCEL | PHY_ENABLE_MULTI;
	} else {
		clear = PHY_ENABLE_ACCEL | PHY_ENABLE_MULTI;
		set = 0;
	}
	ret = FUNC4(ohci, 5, clear, set);
	if (ret < 0)
		return ret;

	if (enable_1394a)
		offset = OHCI1394_HCControlSet;
	else
		offset = OHCI1394_HCControlClear;
	FUNC3(ohci, offset, OHCI1394_HCControl_aPhyEnhanceEnable);

	/* Clean up: configuration has been taken care of. */
	FUNC3(ohci, OHCI1394_HCControlClear,
		  OHCI1394_HCControl_programPhyEnable);

	return 0;
}