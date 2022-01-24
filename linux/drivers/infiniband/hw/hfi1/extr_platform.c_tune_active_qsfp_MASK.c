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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_2__ {int* cache; int limiting_active; int reset_needed; } ;
struct hfi1_pportdata {int link_speed_supported; int link_speed_enabled; int /*<<< orphan*/  dd; TYPE_1__ qsfp_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPA_INVALID_INDEX ; 
 int OPA_LINK_SPEED_12_5G ; 
 int OPA_LINK_SPEED_25G ; 
 int /*<<< orphan*/  PLATFORM_CONFIG_PORT_TABLE ; 
 int /*<<< orphan*/  PORT_TABLE_LOCAL_ATTEN_12G ; 
 int /*<<< orphan*/  PORT_TABLE_LOCAL_ATTEN_25G ; 
 int /*<<< orphan*/  PORT_TABLE_RX_PRESET_IDX ; 
 int /*<<< orphan*/  PORT_TABLE_TX_PRESET_IDX_ACTIVE_EQ ; 
 int /*<<< orphan*/  PORT_TABLE_TX_PRESET_IDX_ACTIVE_NO_EQ ; 
 size_t QSFP_EQ_INFO_OFFS ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct hfi1_pportdata*) ; 
 int FUNC5 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_pportdata*,TYPE_1__*) ; 
 int FUNC7 (struct hfi1_pportdata*) ; 
 int FUNC8 (struct hfi1_pportdata*) ; 
 int FUNC9 (struct hfi1_pportdata*,int) ; 

__attribute__((used)) static int FUNC10(struct hfi1_pportdata *ppd, u32 *ptr_tx_preset,
			    u32 *ptr_rx_preset, u32 *ptr_total_atten)
{
	int ret;
	u16 lss = ppd->link_speed_supported, lse = ppd->link_speed_enabled;
	u8 *cache = ppd->qsfp_info.cache;

	ppd->qsfp_info.limiting_active = 1;

	ret = FUNC9(ppd, 0);
	if (ret)
		return ret;

	ret = FUNC5(ppd);
	if (ret)
		return ret;

	ret = FUNC4(ppd);
	if (ret)
		return ret;

	/*
	 * We'll change the QSFP memory contents from here on out, thus we set a
	 * flag here to remind ourselves to reset the QSFP module. This prevents
	 * reuse of stale settings established in our previous pass through.
	 */
	if (ppd->qsfp_info.reset_needed) {
		ret = FUNC7(ppd);
		if (ret)
			return ret;
		FUNC6(ppd, &ppd->qsfp_info);
	} else {
		ppd->qsfp_info.reset_needed = 1;
	}

	ret = FUNC8(ppd);
	if (ret)
		return ret;

	if (cache[QSFP_EQ_INFO_OFFS] & 0x4) {
		ret = FUNC3(
			ppd->dd,
			PLATFORM_CONFIG_PORT_TABLE, 0,
			PORT_TABLE_TX_PRESET_IDX_ACTIVE_EQ,
			ptr_tx_preset, 4);
		if (ret) {
			*ptr_tx_preset = OPA_INVALID_INDEX;
			return ret;
		}
	} else {
		ret = FUNC3(
			ppd->dd,
			PLATFORM_CONFIG_PORT_TABLE, 0,
			PORT_TABLE_TX_PRESET_IDX_ACTIVE_NO_EQ,
			ptr_tx_preset, 4);
		if (ret) {
			*ptr_tx_preset = OPA_INVALID_INDEX;
			return ret;
		}
	}

	ret = FUNC3(
		ppd->dd, PLATFORM_CONFIG_PORT_TABLE, 0,
		PORT_TABLE_RX_PRESET_IDX, ptr_rx_preset, 4);
	if (ret) {
		*ptr_rx_preset = OPA_INVALID_INDEX;
		return ret;
	}

	if ((lss & OPA_LINK_SPEED_25G) && (lse & OPA_LINK_SPEED_25G))
		FUNC3(
			ppd->dd, PLATFORM_CONFIG_PORT_TABLE, 0,
			PORT_TABLE_LOCAL_ATTEN_25G, ptr_total_atten, 4);
	else if ((lss & OPA_LINK_SPEED_12_5G) && (lse & OPA_LINK_SPEED_12_5G))
		FUNC3(
			ppd->dd, PLATFORM_CONFIG_PORT_TABLE, 0,
			PORT_TABLE_LOCAL_ATTEN_12G, ptr_total_atten, 4);

	FUNC0(ppd, *ptr_rx_preset, *ptr_tx_preset);

	FUNC1(ppd, *ptr_rx_preset, *ptr_tx_preset);

	FUNC2(ppd, *ptr_rx_preset, *ptr_tx_preset);

	ret = FUNC9(ppd, 1);

	return ret;
}