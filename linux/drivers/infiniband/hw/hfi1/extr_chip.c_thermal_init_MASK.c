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
struct hfi1_devdata {scalar_t__ icode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_CFG_THERM_POLL_EN ; 
 int /*<<< orphan*/  CR_SBUS ; 
 int /*<<< orphan*/  CR_THERM_INIT ; 
 scalar_t__ ICODE_RTL_SILICON ; 
 int /*<<< orphan*/  RESET_SBUS_RECEIVER ; 
 int /*<<< orphan*/  SBUS_THERMAL ; 
 int SBUS_THERM_MONITOR_MODE ; 
 int /*<<< orphan*/  SBUS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,int,char*) ; 
 int /*<<< orphan*/  WRITE_SBUS_RECEIVER ; 
 int FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hfi1_devdata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct hfi1_devdata *dd)
{
	int ret = 0;

	if (dd->icode != ICODE_RTL_SILICON ||
	    FUNC2(dd, CR_THERM_INIT, NULL))
		return ret;

	ret = FUNC1(dd, CR_SBUS, SBUS_TIMEOUT);
	if (ret) {
		FUNC0(dd, ret, "Acquire SBus");
		return ret;
	}

	FUNC3(dd, "Initializing thermal sensor\n");
	/* Disable polling of thermal readings */
	FUNC7(dd, ASIC_CFG_THERM_POLL_EN, 0x0);
	FUNC4(100);
	/* Thermal Sensor Initialization */
	/*    Step 1: Reset the Thermal SBus Receiver */
	ret = FUNC6(dd, SBUS_THERMAL, 0x0,
				RESET_SBUS_RECEIVER, 0);
	if (ret) {
		FUNC0(dd, ret, "Bus Reset");
		goto done;
	}
	/*    Step 2: Set Reset bit in Thermal block */
	ret = FUNC6(dd, SBUS_THERMAL, 0x0,
				WRITE_SBUS_RECEIVER, 0x1);
	if (ret) {
		FUNC0(dd, ret, "Therm Block Reset");
		goto done;
	}
	/*    Step 3: Write clock divider value (100MHz -> 2MHz) */
	ret = FUNC6(dd, SBUS_THERMAL, 0x1,
				WRITE_SBUS_RECEIVER, 0x32);
	if (ret) {
		FUNC0(dd, ret, "Write Clock Div");
		goto done;
	}
	/*    Step 4: Select temperature mode */
	ret = FUNC6(dd, SBUS_THERMAL, 0x3,
				WRITE_SBUS_RECEIVER,
				SBUS_THERM_MONITOR_MODE);
	if (ret) {
		FUNC0(dd, ret, "Write Mode Sel");
		goto done;
	}
	/*    Step 5: De-assert block reset and start conversion */
	ret = FUNC6(dd, SBUS_THERMAL, 0x0,
				WRITE_SBUS_RECEIVER, 0x2);
	if (ret) {
		FUNC0(dd, ret, "Write Reset Deassert");
		goto done;
	}
	/*    Step 5.1: Wait for first conversion (21.5ms per spec) */
	FUNC4(22);

	/* Enable polling of thermal readings */
	FUNC7(dd, ASIC_CFG_THERM_POLL_EN, 0x1);

	/* Set initialized flag */
	ret = FUNC1(dd, CR_THERM_INIT, 0);
	if (ret)
		FUNC0(dd, ret, "Unable to set thermal init flag");

done:
	FUNC5(dd, CR_SBUS);
	return ret;
}