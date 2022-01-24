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
struct TYPE_2__ {int is64b; int enb; } ;
union nps_pkt_in_instr_ctl {TYPE_1__ s; void* value; } ;
typedef  int /*<<< orphan*/  u64 ;
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int MAX_CSR_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (struct nitrox_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_device*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct nitrox_device *ndev, int ring)
{
	union nps_pkt_in_instr_ctl pkt_in_ctl;
	int max_retries = MAX_CSR_RETRIES;
	u64 offset;

	/* 64-byte instruction size */
	offset = FUNC0(ring);
	pkt_in_ctl.value = FUNC1(ndev, offset);
	pkt_in_ctl.s.is64b = 1;
	pkt_in_ctl.s.enb = 1;
	FUNC2(ndev, offset, pkt_in_ctl.value);

	/* wait for set [ENB] */
	do {
		pkt_in_ctl.value = FUNC1(ndev, offset);
		if (pkt_in_ctl.s.enb)
			break;
		FUNC3(50);
	} while (max_retries--);
}