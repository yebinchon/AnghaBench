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
struct TYPE_2__ {int nps_slc_buf_thrsh; } ;
union bmo_ctl2 {int /*<<< orphan*/  value; TYPE_1__ s; } ;
typedef  int /*<<< orphan*/  u64 ;
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMO_CTL2 ; 
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct nitrox_device *ndev)
{
	union bmo_ctl2 bmo_ctl2;
	u64 offset;

	/* no threshold limits for PCIe */
	offset = BMO_CTL2;
	bmo_ctl2.value = FUNC0(ndev, offset);
	bmo_ctl2.s.nps_slc_buf_thrsh = 0xff;
	FUNC1(ndev, offset, bmo_ctl2.value);
}