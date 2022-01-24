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
struct TYPE_2__ {scalar_t__ enb; } ;
union nps_pkt_slc_ctl {TYPE_1__ s; void* value; } ;
union nps_pkt_slc_cnts {void* value; } ;
typedef  int /*<<< orphan*/  u64 ;
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int MAX_CSR_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (struct nitrox_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_device*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct nitrox_device *ndev, int port)
{
	union nps_pkt_slc_ctl pkt_slc_ctl;
	union nps_pkt_slc_cnts pkt_slc_cnts;
	int max_retries = MAX_CSR_RETRIES;
	u64 offset;

	/* step 1: disable slc port */
	offset = FUNC1(port);
	pkt_slc_ctl.value = FUNC2(ndev, offset);
	pkt_slc_ctl.s.enb = 0;
	FUNC3(ndev, offset, pkt_slc_ctl.value);

	/* step 2 */
	FUNC5(100, 150);
	/* wait to clear [ENB] */
	do {
		pkt_slc_ctl.value = FUNC2(ndev, offset);
		if (!pkt_slc_ctl.s.enb)
			break;
		FUNC4(50);
	} while (max_retries--);

	/* step 3: clear slc counters */
	offset = FUNC0(port);
	pkt_slc_cnts.value = FUNC2(ndev, offset);
	FUNC3(ndev, offset, pkt_slc_cnts.value);
	FUNC5(50, 100);
}