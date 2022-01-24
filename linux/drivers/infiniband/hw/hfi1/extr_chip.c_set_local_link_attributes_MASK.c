#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct hfi1_pportdata {int local_tx_rate; int link_speed_enabled; int /*<<< orphan*/  link_width_enabled; int /*<<< orphan*/  port_crc_mode_enabled; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {scalar_t__ dc8051_ver; int /*<<< orphan*/  minrev; TYPE_1__* pcidev; int /*<<< orphan*/  vl15_init; int /*<<< orphan*/  vcu; int /*<<< orphan*/  vau; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EXT_CFG_LCB_RESET_SUPPORTED_SHIFT ; 
 int HCMD_SUCCESS ; 
 int /*<<< orphan*/  HOST_INTERFACE_VERSION ; 
 scalar_t__ LOOPBACK_SERDES ; 
 int LOOPBACK_SERDES_CONFIG_BIT_MASK_SHIFT ; 
 int OPA_LINK_SPEED_12_5G ; 
 int OPA_LINK_SPEED_25G ; 
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*) ; 
 scalar_t__ loopback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hfi1_devdata*,int*,int*,int*,int*) ; 
 int FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hfi1_devdata*,int,int,int,int) ; 
 int FUNC8 (struct hfi1_devdata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hfi1_devdata*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct hfi1_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct hfi1_pportdata *ppd)
{
	struct hfi1_devdata *dd = ppd->dd;
	u8 enable_lane_tx;
	u8 tx_polarity_inversion;
	u8 rx_polarity_inversion;
	int ret;
	u32 misc_bits = 0;
	/* reset our fabric serdes to clear any lingering problems */
	FUNC2(dd);

	/* set the local tx rate - need to read-modify-write */
	ret = FUNC4(dd, &enable_lane_tx, &tx_polarity_inversion,
			       &rx_polarity_inversion, &ppd->local_tx_rate);
	if (ret)
		goto set_local_link_attributes_fail;

	if (dd->dc8051_ver < FUNC0(0, 20, 0)) {
		/* set the tx rate to the fastest enabled */
		if (ppd->link_speed_enabled & OPA_LINK_SPEED_25G)
			ppd->local_tx_rate = 1;
		else
			ppd->local_tx_rate = 0;
	} else {
		/* set the tx rate to all enabled */
		ppd->local_tx_rate = 0;
		if (ppd->link_speed_enabled & OPA_LINK_SPEED_25G)
			ppd->local_tx_rate |= 2;
		if (ppd->link_speed_enabled & OPA_LINK_SPEED_12_5G)
			ppd->local_tx_rate |= 1;
	}

	enable_lane_tx = 0xF; /* enable all four lanes */
	ret = FUNC7(dd, enable_lane_tx, tx_polarity_inversion,
				rx_polarity_inversion, ppd->local_tx_rate);
	if (ret != HCMD_SUCCESS)
		goto set_local_link_attributes_fail;

	ret = FUNC5(dd, HOST_INTERFACE_VERSION);
	if (ret != HCMD_SUCCESS) {
		FUNC1(dd,
			   "Failed to set host interface version, return 0x%x\n",
			   ret);
		goto set_local_link_attributes_fail;
	}

	/*
	 * DC supports continuous updates.
	 */
	ret = FUNC10(dd,
				 0 /* no power management */,
				 1 /* continuous updates */);
	if (ret != HCMD_SUCCESS)
		goto set_local_link_attributes_fail;

	/* z=1 in the next call: AU of 0 is not supported by the hardware */
	ret = FUNC8(dd, dd->vau, 1, dd->vcu, dd->vl15_init,
				    ppd->port_crc_mode_enabled);
	if (ret != HCMD_SUCCESS)
		goto set_local_link_attributes_fail;

	/*
	 * SerDes loopback init sequence requires
	 * setting bit 0 of MISC_CONFIG_BITS
	 */
	if (loopback == LOOPBACK_SERDES)
		misc_bits |= 1 << LOOPBACK_SERDES_CONFIG_BIT_MASK_SHIFT;

	/*
	 * An external device configuration request is used to reset the LCB
	 * to retry to obtain operational lanes when the first attempt is
	 * unsuccesful.
	 */
	if (dd->dc8051_ver >= FUNC0(1, 25, 0))
		misc_bits |= 1 << EXT_CFG_LCB_RESET_SUPPORTED_SHIFT;

	ret = FUNC9(dd, misc_bits, 0,
				       FUNC3(
						ppd->link_width_enabled));
	if (ret != HCMD_SUCCESS)
		goto set_local_link_attributes_fail;

	/* let peer know who we are */
	ret = FUNC6(dd, dd->pcidev->device, dd->minrev);
	if (ret == HCMD_SUCCESS)
		return 0;

set_local_link_attributes_fail:
	FUNC1(dd,
		   "Failed to set local link attributes, return 0x%x\n",
		   ret);
	return ret;
}