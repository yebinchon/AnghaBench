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
struct TYPE_2__ {int enb; int z; int rh; } ;
union nps_pkt_slc_ctl {TYPE_1__ s; scalar_t__ value; } ;
typedef  int /*<<< orphan*/  u64 ;
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int MAX_CSR_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct nitrox_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct nitrox_device *ndev, int port)
{
	union nps_pkt_slc_ctl pkt_slc_ctl;
	int max_retries = MAX_CSR_RETRIES;
	u64 offset;

	offset = FUNC0(port);
	pkt_slc_ctl.value = 0;
	pkt_slc_ctl.s.enb = 1;
	/*
	 * 8 trailing 0x00 bytes will be added
	 * to the end of the outgoing packet.
	 */
	pkt_slc_ctl.s.z = 1;
	/* enable response header */
	pkt_slc_ctl.s.rh = 1;
	FUNC2(ndev, offset, pkt_slc_ctl.value);

	/* wait to set [ENB] */
	do {
		pkt_slc_ctl.value = FUNC1(ndev, offset);
		if (pkt_slc_ctl.s.enb)
			break;
		FUNC3(50);
	} while (max_retries--);
}