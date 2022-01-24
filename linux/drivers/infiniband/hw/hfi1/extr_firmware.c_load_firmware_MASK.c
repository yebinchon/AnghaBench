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
struct hfi1_devdata {size_t hfi1_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_SBUS ; 
 int /*<<< orphan*/  NUM_FABRIC_SERDES ; 
 int /*<<< orphan*/  SBUS_TIMEOUT ; 
 int /*<<< orphan*/  SPICO_FABRIC ; 
 int FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_fabric_serdes_broadcast ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/ * fabric_serdes_addrs ; 
 int /*<<< orphan*/ * fabric_serdes_broadcast ; 
 int /*<<< orphan*/  fw_8051 ; 
 scalar_t__ fw_8051_load ; 
 int /*<<< orphan*/  fw_fabric ; 
 scalar_t__ fw_fabric_serdes_load ; 
 int FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct hfi1_devdata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct hfi1_devdata*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 

int FUNC10(struct hfi1_devdata *dd)
{
	int ret;

	if (fw_fabric_serdes_load) {
		ret = FUNC0(dd, CR_SBUS, SBUS_TIMEOUT);
		if (ret)
			return ret;

		FUNC7(dd);

		FUNC8(dd, all_fabric_serdes_broadcast,
				     fabric_serdes_broadcast[dd->hfi1_id],
				     fabric_serdes_addrs[dd->hfi1_id],
				     NUM_FABRIC_SERDES);
		FUNC9(dd, SPICO_FABRIC);
		do {
			ret = FUNC4(dd, &fw_fabric);
		} while (FUNC6(dd, ret));

		FUNC1(dd);
		FUNC5(dd, CR_SBUS);
		if (ret)
			return ret;
	}

	if (fw_8051_load) {
		do {
			ret = FUNC3(dd, &fw_8051);
		} while (FUNC6(dd, ret));
		if (ret)
			return ret;
	}

	FUNC2(dd);
	return 0;
}