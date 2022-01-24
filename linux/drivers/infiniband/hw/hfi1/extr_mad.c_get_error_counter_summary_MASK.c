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
typedef  int u8 ;
typedef  int u64 ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_ibport {int dummy; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTR_INVALID_VL ; 
 int /*<<< orphan*/  C_DC_FM_CFG_ERR ; 
 int /*<<< orphan*/  C_DC_RCV_ERR ; 
 int /*<<< orphan*/  C_DC_REINIT_FROM_PEER_CNT ; 
 int /*<<< orphan*/  C_DC_RMT_PHY_ERR ; 
 int /*<<< orphan*/  C_DC_RX_REPLAY ; 
 int /*<<< orphan*/  C_DC_SEQ_CRC_CNT ; 
 int /*<<< orphan*/  C_DC_UNC_ERR ; 
 int /*<<< orphan*/  C_RCV_OVF ; 
 int /*<<< orphan*/  C_SW_LINK_DOWN ; 
 int /*<<< orphan*/  C_SW_RCV_CSTR_ERR ; 
 int /*<<< orphan*/  C_SW_XMIT_CSTR_ERR ; 
 int /*<<< orphan*/  C_SW_XMIT_DSCD ; 
 struct hfi1_devdata* FUNC0 (struct ib_device*) ; 
 struct hfi1_pportdata* FUNC1 (struct hfi1_ibport*) ; 
 int FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hfi1_ibport* FUNC4 (struct ib_device*,int) ; 

__attribute__((used)) static u64 FUNC5(struct ib_device *ibdev, u8 port,
				     u8 res_lli, u8 res_ler)
{
	struct hfi1_devdata *dd = FUNC0(ibdev);
	struct hfi1_ibport *ibp = FUNC4(ibdev, port);
	struct hfi1_pportdata *ppd = FUNC1(ibp);
	u64 error_counter_summary = 0, tmp;

	error_counter_summary += FUNC3(ppd, C_SW_RCV_CSTR_ERR,
						CNTR_INVALID_VL);
	/* port_rcv_switch_relay_errors is 0 for HFIs */
	error_counter_summary += FUNC3(ppd, C_SW_XMIT_DSCD,
						CNTR_INVALID_VL);
	error_counter_summary += FUNC3(ppd, C_SW_XMIT_CSTR_ERR,
						CNTR_INVALID_VL);
	error_counter_summary += FUNC2(dd, C_DC_RMT_PHY_ERR,
					       CNTR_INVALID_VL);
	/* local link integrity must be right-shifted by the lli resolution */
	error_counter_summary += (FUNC2(dd, C_DC_RX_REPLAY,
						CNTR_INVALID_VL) >> res_lli);
	/* link error recovery must b right-shifted by the ler resolution */
	tmp = FUNC2(dd, C_DC_SEQ_CRC_CNT, CNTR_INVALID_VL);
	tmp += FUNC2(dd, C_DC_REINIT_FROM_PEER_CNT, CNTR_INVALID_VL);
	error_counter_summary += (tmp >> res_ler);
	error_counter_summary += FUNC2(dd, C_DC_RCV_ERR,
					       CNTR_INVALID_VL);
	error_counter_summary += FUNC2(dd, C_RCV_OVF, CNTR_INVALID_VL);
	error_counter_summary += FUNC2(dd, C_DC_FM_CFG_ERR,
					       CNTR_INVALID_VL);
	/* ppd->link_downed is a 32-bit value */
	error_counter_summary += FUNC3(ppd, C_SW_LINK_DOWN,
						CNTR_INVALID_VL);
	tmp = FUNC2(dd, C_DC_UNC_ERR, CNTR_INVALID_VL);
	/* this is an 8-bit quantity */
	error_counter_summary += tmp < 0x100 ? (tmp & 0xff) : 0xff;

	return error_counter_summary;
}