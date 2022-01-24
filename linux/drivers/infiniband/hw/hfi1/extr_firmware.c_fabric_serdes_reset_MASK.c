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
typedef  int /*<<< orphan*/  u8 ;
struct hfi1_devdata {size_t hfi1_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_SBUS ; 
 int /*<<< orphan*/  SBUS_TIMEOUT ; 
 int /*<<< orphan*/  SPICO_FABRIC ; 
 int /*<<< orphan*/  WRITE_SBUS_RECEIVER ; 
 int FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/ * fabric_serdes_broadcast ; 
 int /*<<< orphan*/  fw_fabric ; 
 int /*<<< orphan*/  fw_fabric_serdes_load ; 
 scalar_t__ FUNC3 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(struct hfi1_devdata *dd)
{
	int ret;

	if (!fw_fabric_serdes_load)
		return;

	ret = FUNC0(dd, CR_SBUS, SBUS_TIMEOUT);
	if (ret) {
		FUNC2(dd,
			   "Cannot acquire SBus resource to reset fabric SerDes - perhaps you should reboot\n");
		return;
	}
	FUNC7(dd);

	if (FUNC3(dd)) {
		/* A0 serdes do not work with a re-download */
		u8 ra = fabric_serdes_broadcast[dd->hfi1_id];

		/* place SerDes in reset and disable SPICO */
		FUNC6(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000011);
		/* wait 100 refclk cycles @ 156.25MHz => 640ns */
		FUNC9(1);
		/* remove SerDes reset */
		FUNC6(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000010);
		/* turn SPICO enable on */
		FUNC6(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000002);
	} else {
		FUNC8(dd, SPICO_FABRIC);
		/*
		 * No need for firmware retry - what to download has already
		 * been decided.
		 * No need to pay attention to the load return - the only
		 * failure is a validation failure, which has already been
		 * checked by the initial download.
		 */
		(void)FUNC4(dd, &fw_fabric);
	}

	FUNC1(dd);
	FUNC5(dd, CR_SBUS);
}