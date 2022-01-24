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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_ibport {int dummy; } ;
struct hfi1_devdata {int dummy; } ;
struct _port_ectrs {void* excessive_buffer_overruns; void* local_link_integrity_errors; void* port_rcv_constraint_errors; void* port_xmit_constraint_errors; void* port_xmit_discards; scalar_t__ port_rcv_switch_relay_errors; void* port_rcv_remote_physical_errors; void* port_rcv_errors; void* link_downed; void* link_error_recovery; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTR_INVALID_VL ; 
 int /*<<< orphan*/  C_DC_RCV_ERR ; 
 int /*<<< orphan*/  C_DC_REINIT_FROM_PEER_CNT ; 
 int /*<<< orphan*/  C_DC_RMT_PHY_ERR ; 
 int /*<<< orphan*/  C_DC_RX_REPLAY ; 
 int /*<<< orphan*/  C_DC_SEQ_CRC_CNT ; 
 int /*<<< orphan*/  C_RCV_OVF ; 
 int /*<<< orphan*/  C_SW_LINK_DOWN ; 
 int /*<<< orphan*/  C_SW_RCV_CSTR_ERR ; 
 int /*<<< orphan*/  C_SW_XMIT_CSTR_ERR ; 
 int /*<<< orphan*/  C_SW_XMIT_DSCD ; 
 scalar_t__ UINT_MAX ; 
 void* FUNC0 (scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 
 struct hfi1_devdata* FUNC2 (struct ib_device*) ; 
 struct hfi1_pportdata* FUNC3 (struct hfi1_ibport*) ; 
 scalar_t__ FUNC4 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hfi1_ibport* FUNC6 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ib_device *ibdev,
				   struct _port_ectrs *rsp, u8 port)
{
	u64 tmp, tmp2;
	struct hfi1_devdata *dd = FUNC2(ibdev);
	struct hfi1_ibport *ibp = FUNC6(ibdev, port);
	struct hfi1_pportdata *ppd = FUNC3(ibp);

	tmp = FUNC4(dd, C_DC_SEQ_CRC_CNT, CNTR_INVALID_VL);
	tmp2 = tmp + FUNC4(dd, C_DC_REINIT_FROM_PEER_CNT,
					CNTR_INVALID_VL);
	if (tmp2 > (u32)UINT_MAX || tmp2 < tmp) {
		/* overflow/wrapped */
		rsp->link_error_recovery = FUNC0(~0);
	} else {
		rsp->link_error_recovery = FUNC0(tmp2);
	}

	rsp->link_downed = FUNC0(FUNC5(ppd, C_SW_LINK_DOWN,
						CNTR_INVALID_VL));
	rsp->port_rcv_errors =
		FUNC1(FUNC4(dd, C_DC_RCV_ERR, CNTR_INVALID_VL));
	rsp->port_rcv_remote_physical_errors =
		FUNC1(FUNC4(dd, C_DC_RMT_PHY_ERR,
					  CNTR_INVALID_VL));
	rsp->port_rcv_switch_relay_errors = 0;
	rsp->port_xmit_discards =
		FUNC1(FUNC5(ppd, C_SW_XMIT_DSCD,
					   CNTR_INVALID_VL));
	rsp->port_xmit_constraint_errors =
		FUNC1(FUNC5(ppd, C_SW_XMIT_CSTR_ERR,
					   CNTR_INVALID_VL));
	rsp->port_rcv_constraint_errors =
		FUNC1(FUNC5(ppd, C_SW_RCV_CSTR_ERR,
					   CNTR_INVALID_VL));
	rsp->local_link_integrity_errors =
		FUNC1(FUNC4(dd, C_DC_RX_REPLAY,
					  CNTR_INVALID_VL));
	rsp->excessive_buffer_overruns =
		FUNC1(FUNC4(dd, C_RCV_OVF, CNTR_INVALID_VL));
}