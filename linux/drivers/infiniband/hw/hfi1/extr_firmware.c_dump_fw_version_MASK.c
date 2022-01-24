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
typedef  scalar_t__ u32 ;
struct hfi1_devdata {size_t hfi1_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_SBUS ; 
 int NUM_FABRIC_SERDES ; 
 int NUM_PCIE_SERDES ; 
 int /*<<< orphan*/  SBUS_MASTER_BROADCAST ; 
 int /*<<< orphan*/  SBUS_TIMEOUT ; 
 int /*<<< orphan*/  WRITE_SBUS_RECEIVER ; 
 int FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/ ** fabric_serdes_addrs ; 
 int /*<<< orphan*/ ** pcie_serdes_addrs ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct hfi1_devdata*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static void FUNC10(struct hfi1_devdata *dd)
{
	u32 pcie_vers[NUM_PCIE_SERDES];
	u32 fabric_vers[NUM_FABRIC_SERDES];
	u32 sbus_vers;
	int i;
	int all_same;
	int ret;
	u8 rcv_addr;

	ret = FUNC0(dd, CR_SBUS, SBUS_TIMEOUT);
	if (ret) {
		FUNC2(dd, "Unable to acquire SBus to read firmware versions\n");
		return;
	}

	/* set fast mode */
	FUNC8(dd);

	/* read version for SBus Master */
	FUNC7(dd, SBUS_MASTER_BROADCAST, 0x02, WRITE_SBUS_RECEIVER, 0);
	FUNC7(dd, SBUS_MASTER_BROADCAST, 0x07, WRITE_SBUS_RECEIVER, 0x1);
	/* wait for interrupt to be processed */
	FUNC9(10000, 11000);
	sbus_vers = FUNC6(dd, SBUS_MASTER_BROADCAST, 0x08, 0x1);
	FUNC3(dd, "SBus Master firmware version 0x%08x\n", sbus_vers);

	/* read version for PCIe SerDes */
	all_same = 1;
	pcie_vers[0] = 0;
	for (i = 0; i < NUM_PCIE_SERDES; i++) {
		rcv_addr = pcie_serdes_addrs[dd->hfi1_id][i];
		FUNC7(dd, rcv_addr, 0x03, WRITE_SBUS_RECEIVER, 0);
		/* wait for interrupt to be processed */
		FUNC9(10000, 11000);
		pcie_vers[i] = FUNC6(dd, rcv_addr, 0x04, 0x0);
		if (i > 0 && pcie_vers[0] != pcie_vers[i])
			all_same = 0;
	}

	if (all_same) {
		FUNC3(dd, "PCIe SerDes firmware version 0x%x\n",
			    pcie_vers[0]);
	} else {
		FUNC4(dd, "PCIe SerDes do not have the same firmware version\n");
		for (i = 0; i < NUM_PCIE_SERDES; i++) {
			FUNC3(dd,
				    "PCIe SerDes lane %d firmware version 0x%x\n",
				    i, pcie_vers[i]);
		}
	}

	/* read version for fabric SerDes */
	all_same = 1;
	fabric_vers[0] = 0;
	for (i = 0; i < NUM_FABRIC_SERDES; i++) {
		rcv_addr = fabric_serdes_addrs[dd->hfi1_id][i];
		FUNC7(dd, rcv_addr, 0x03, WRITE_SBUS_RECEIVER, 0);
		/* wait for interrupt to be processed */
		FUNC9(10000, 11000);
		fabric_vers[i] = FUNC6(dd, rcv_addr, 0x04, 0x0);
		if (i > 0 && fabric_vers[0] != fabric_vers[i])
			all_same = 0;
	}

	if (all_same) {
		FUNC3(dd, "Fabric SerDes firmware version 0x%x\n",
			    fabric_vers[0]);
	} else {
		FUNC4(dd, "Fabric SerDes do not have the same firmware version\n");
		for (i = 0; i < NUM_FABRIC_SERDES; i++) {
			FUNC3(dd,
				    "Fabric SerDes lane %d firmware version 0x%x\n",
				    i, fabric_vers[i]);
		}
	}

	FUNC1(dd);
	FUNC5(dd, CR_SBUS);
}