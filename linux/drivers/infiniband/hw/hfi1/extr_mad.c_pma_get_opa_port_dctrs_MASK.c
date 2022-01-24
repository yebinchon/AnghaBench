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
struct ib_device {int dummy; } ;
struct hfi1_devdata {int dummy; } ;
struct _port_dctrs {void* port_multicast_rcv_pkts; void* port_multicast_xmit_pkts; void* port_rcv_pkts; void* port_xmit_pkts; void* port_rcv_data; void* port_xmit_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTR_INVALID_VL ; 
 int /*<<< orphan*/  C_DC_MC_RCV_PKTS ; 
 int /*<<< orphan*/  C_DC_MC_XMIT_PKTS ; 
 int /*<<< orphan*/  C_DC_RCV_FLITS ; 
 int /*<<< orphan*/  C_DC_RCV_PKTS ; 
 int /*<<< orphan*/  C_DC_XMIT_FLITS ; 
 int /*<<< orphan*/  C_DC_XMIT_PKTS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct hfi1_devdata* FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ib_device *ibdev,
				   struct _port_dctrs *rsp)
{
	struct hfi1_devdata *dd = FUNC1(ibdev);

	rsp->port_xmit_data = FUNC0(FUNC2(dd, C_DC_XMIT_FLITS,
						CNTR_INVALID_VL));
	rsp->port_rcv_data = FUNC0(FUNC2(dd, C_DC_RCV_FLITS,
						CNTR_INVALID_VL));
	rsp->port_xmit_pkts = FUNC0(FUNC2(dd, C_DC_XMIT_PKTS,
						CNTR_INVALID_VL));
	rsp->port_rcv_pkts = FUNC0(FUNC2(dd, C_DC_RCV_PKTS,
						CNTR_INVALID_VL));
	rsp->port_multicast_xmit_pkts =
		FUNC0(FUNC2(dd, C_DC_MC_XMIT_PKTS,
					  CNTR_INVALID_VL));
	rsp->port_multicast_rcv_pkts =
		FUNC0(FUNC2(dd, C_DC_MC_RCV_PKTS,
					  CNTR_INVALID_VL));
}