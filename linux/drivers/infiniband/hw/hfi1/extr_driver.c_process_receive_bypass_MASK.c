#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct hfi1_packet {int rhf; void** ebuf; int tlen; int /*<<< orphan*/  hdr; TYPE_1__* rcd; } ;
struct TYPE_4__ {int status_and_code; void* packet_flit2; void* packet_flit1; } ;
struct hfi1_devdata {TYPE_2__ err_info_rcvport; int /*<<< orphan*/  sw_rcv_bypass_packet_errors; } ;
typedef  int /*<<< orphan*/  flits ;
struct TYPE_3__ {struct hfi1_devdata* dd; } ;

/* Variables and functions */
 int BAD_L2_ERR ; 
 int OPA_EI_STATUS_SMASK ; 
 int RHF_LEN_ERR ; 
 int RHF_RCV_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_packet*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_packet*) ; 
 scalar_t__ FUNC4 (struct hfi1_packet*) ; 
 scalar_t__ FUNC5 (struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct hfi1_packet*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct hfi1_packet *packet)
{
	struct hfi1_devdata *dd = packet->rcd->dd;

	if (FUNC4(packet)) {
		FUNC6(packet);
		return RHF_RCV_CONTINUE;
	}

	if (FUNC5(packet))
		return RHF_RCV_CONTINUE;

	FUNC9(packet);

	if (FUNC10(FUNC8(packet->rhf))) {
		FUNC1(packet);
		return RHF_RCV_CONTINUE;
	}

	if (FUNC2(packet->hdr) == 0x2) {
		FUNC3(packet);
	} else {
		FUNC0(dd,
			   "Bypass packets other than 16B are not supported in normal operation. Dropping\n");
		FUNC7(&dd->sw_rcv_bypass_packet_errors);
		if (!(dd->err_info_rcvport.status_and_code &
		      OPA_EI_STATUS_SMASK)) {
			u64 *flits = packet->ebuf;

			if (flits && !(packet->rhf & RHF_LEN_ERR)) {
				dd->err_info_rcvport.packet_flit1 = flits[0];
				dd->err_info_rcvport.packet_flit2 =
					packet->tlen > sizeof(flits[0]) ?
					flits[1] : 0;
			}
			dd->err_info_rcvport.status_and_code |=
				(OPA_EI_STATUS_SMASK | BAD_L2_ERR);
		}
	}
	return RHF_RCV_CONTINUE;
}