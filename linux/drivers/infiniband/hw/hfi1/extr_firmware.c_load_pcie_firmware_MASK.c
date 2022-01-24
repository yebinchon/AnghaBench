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
 int /*<<< orphan*/  NUM_PCIE_SERDES ; 
 int /*<<< orphan*/  SPICO_SBUS ; 
 int /*<<< orphan*/  all_pcie_serdes_broadcast ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  fw_pcie ; 
 scalar_t__ fw_pcie_serdes_load ; 
 int /*<<< orphan*/  fw_sbus ; 
 scalar_t__ fw_sbus_load ; 
 int FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pcie_serdes_addrs ; 
 int /*<<< orphan*/ * pcie_serdes_broadcast ; 
 scalar_t__ FUNC4 (struct hfi1_devdata*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 

int FUNC8(struct hfi1_devdata *dd)
{
	int ret = 0;

	/* both firmware loads below use the SBus */
	FUNC5(dd);

	if (fw_sbus_load) {
		FUNC7(dd, SPICO_SBUS);
		do {
			ret = FUNC3(dd, &fw_sbus);
		} while (FUNC4(dd, ret));
		if (ret)
			goto done;
	}

	if (fw_pcie_serdes_load) {
		FUNC1(dd, "Setting PCIe SerDes broadcast\n");
		FUNC6(dd, all_pcie_serdes_broadcast,
				     pcie_serdes_broadcast[dd->hfi1_id],
				     pcie_serdes_addrs[dd->hfi1_id],
				     NUM_PCIE_SERDES);
		do {
			ret = FUNC2(dd, &fw_pcie);
		} while (FUNC4(dd, ret));
		if (ret)
			goto done;
	}

done:
	FUNC0(dd);

	return ret;
}