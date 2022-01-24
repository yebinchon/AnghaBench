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
struct TYPE_4__ {scalar_t__ done; } ;
union lbc_inval_status {TYPE_2__ s; void* value; } ;
struct TYPE_3__ {int cam_inval_start; } ;
union lbc_inval_ctl {void* value; TYPE_1__ s; } ;
typedef  int /*<<< orphan*/  u64 ;
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBC_INVAL_CTL ; 
 int /*<<< orphan*/  LBC_INVAL_STATUS ; 
 int MAX_CSR_RETRIES ; 
 void* FUNC0 (struct nitrox_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_device*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct nitrox_device *ndev)
{
	union lbc_inval_ctl lbc_ctl;
	union lbc_inval_status lbc_stat;
	int max_retries = MAX_CSR_RETRIES;
	u64 offset;

	/* invalidate LBC */
	offset = LBC_INVAL_CTL;
	lbc_ctl.value = FUNC0(ndev, offset);
	lbc_ctl.s.cam_inval_start = 1;
	FUNC1(ndev, offset, lbc_ctl.value);

	offset = LBC_INVAL_STATUS;
	do {
		lbc_stat.value = FUNC0(ndev, offset);
		if (lbc_stat.s.done)
			break;
		FUNC2(50);
	} while (max_retries--);
}