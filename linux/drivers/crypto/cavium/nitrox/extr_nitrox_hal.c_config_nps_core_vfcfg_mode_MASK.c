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
struct TYPE_2__ {int cfg; } ;
union nps_core_gbl_vfcfg {int /*<<< orphan*/  value; TYPE_1__ s; } ;
struct nitrox_device {int dummy; } ;
typedef  enum vf_mode { ____Placeholder_vf_mode } vf_mode ;

/* Variables and functions */
 int /*<<< orphan*/  NPS_CORE_GBL_VFCFG ; 
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct nitrox_device *ndev, enum vf_mode mode)
{
	union nps_core_gbl_vfcfg vfcfg;

	vfcfg.value = FUNC0(ndev, NPS_CORE_GBL_VFCFG);
	vfcfg.s.cfg = mode & 0x7;

	FUNC1(ndev, NPS_CORE_GBL_VFCFG, vfcfg.value);
}