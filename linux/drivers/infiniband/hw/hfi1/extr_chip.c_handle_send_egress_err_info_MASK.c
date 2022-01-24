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
typedef  int u64 ;
struct hfi1_pportdata {int /*<<< orphan*/ * port_xmit_discards_vl; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t C_VL_15 ; 
 int PORT_DISCARD_EGRESS_ERRS ; 
 int /*<<< orphan*/  SEND_EGRESS_ERR_INFO ; 
 int /*<<< orphan*/  SEND_EGRESS_ERR_SOURCE ; 
 int TXE_NUM_DATA_VL ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct hfi1_devdata *dd,
					int vl)
{
	struct hfi1_pportdata *ppd = dd->pport;
	u64 src = FUNC5(dd, SEND_EGRESS_ERR_SOURCE); /* read first */
	u64 info = FUNC5(dd, SEND_EGRESS_ERR_INFO);
	char buf[96];

	/* clear down all observed info as quickly as possible after read */
	FUNC6(dd, SEND_EGRESS_ERR_INFO, info);

	FUNC1(dd,
		    "Egress Error Info: 0x%llx, %s Egress Error Src 0x%llx\n",
		    info, FUNC2(buf, sizeof(buf), info), src);

	/* Eventually add other counters for each bit */
	if (info & PORT_DISCARD_EGRESS_ERRS) {
		int weight, i;

		/*
		 * Count all applicable bits as individual errors and
		 * attribute them to the packet that triggered this handler.
		 * This may not be completely accurate due to limitations
		 * on the available hardware error information.  There is
		 * a single information register and any number of error
		 * packets may have occurred and contributed to it before
		 * this routine is called.  This means that:
		 * a) If multiple packets with the same error occur before
		 *    this routine is called, earlier packets are missed.
		 *    There is only a single bit for each error type.
		 * b) Errors may not be attributed to the correct VL.
		 *    The driver is attributing all bits in the info register
		 *    to the packet that triggered this call, but bits
		 *    could be an accumulation of different packets with
		 *    different VLs.
		 * c) A single error packet may have multiple counts attached
		 *    to it.  There is no way for the driver to know if
		 *    multiple bits set in the info register are due to a
		 *    single packet or multiple packets.  The driver assumes
		 *    multiple packets.
		 */
		weight = FUNC3(info & PORT_DISCARD_EGRESS_ERRS);
		for (i = 0; i < weight; i++) {
			FUNC0(ppd);
			if (vl >= 0 && vl < TXE_NUM_DATA_VL)
				FUNC4(&ppd->port_xmit_discards_vl[vl]);
			else if (vl == 15)
				FUNC4(&ppd->port_xmit_discards_vl
					    [C_VL_15]);
		}
	}
}