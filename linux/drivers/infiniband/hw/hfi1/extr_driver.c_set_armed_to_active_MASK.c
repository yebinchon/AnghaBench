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
typedef  scalar_t__ u8 ;
struct work_struct {int dummy; } ;
struct ib_header {int dummy; } ;
struct hfi1_packet {int /*<<< orphan*/  rhf_addr; int /*<<< orphan*/  rcd; int /*<<< orphan*/  rhf; } ;
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {TYPE_1__* ppd; } ;
struct hfi1_16b_header {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  link_wq; struct work_struct linkstate_active_work; } ;

/* Variables and functions */
 int IB_PORT_ACTIVE ; 
 scalar_t__ RHF_RCV_TYPE_BYPASS ; 
 scalar_t__ RHF_RCV_TYPE_IB ; 
 scalar_t__ SC15_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct hfi1_16b_header*) ; 
 scalar_t__ FUNC3 (struct ib_header*,int /*<<< orphan*/ ) ; 
 struct hfi1_16b_header* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ib_header* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct work_struct*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC9(struct hfi1_ctxtdata *rcd,
				      struct hfi1_packet *packet,
				      struct hfi1_devdata *dd)
{
	struct work_struct *lsaw = &rcd->ppd->linkstate_active_work;
	u8 etype = FUNC8(packet->rhf);
	u8 sc = SC15_PACKET;

	if (etype == RHF_RCV_TYPE_IB) {
		struct ib_header *hdr = FUNC5(packet->rcd,
							   packet->rhf_addr);
		sc = FUNC3(hdr, packet->rhf);
	} else if (etype == RHF_RCV_TYPE_BYPASS) {
		struct hfi1_16b_header *hdr = FUNC4(
						packet->rcd,
						packet->rhf_addr);
		sc = FUNC2(hdr);
	}
	if (sc != SC15_PACKET) {
		int hwstate = FUNC1(rcd->ppd);

		if (hwstate != IB_PORT_ACTIVE) {
			FUNC0(dd,
				    "Unexpected link state %s\n",
				    FUNC6(hwstate));
			return 0;
		}

		FUNC7(rcd->ppd->link_wq, lsaw);
		return 1;
	}
	return 0;
}