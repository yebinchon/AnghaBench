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
struct TYPE_3__ {int se_wd; } ;
union emu_wd_int_ena_w1s {scalar_t__ value; TYPE_1__ s; } ;
struct TYPE_4__ {int se_ge; int ae_ge; } ;
union emu_ge_int_ena_w1s {scalar_t__ value; TYPE_2__ s; } ;
typedef  int /*<<< orphan*/  u64 ;
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NR_CLUSTERS ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_device*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4(struct nitrox_device *ndev)
{
	union emu_wd_int_ena_w1s emu_wd_int;
	union emu_ge_int_ena_w1s emu_ge_int;
	u64 offset;
	int i;

	/* enable cores */
	FUNC2(ndev);

	/* enable general error and watch dog interrupts */
	emu_ge_int.value = 0;
	emu_ge_int.s.se_ge = 0xffff;
	emu_ge_int.s.ae_ge = 0xfffff;
	emu_wd_int.value = 0;
	emu_wd_int.s.se_wd = 1;

	for (i = 0; i < NR_CLUSTERS; i++) {
		offset = FUNC1(i);
		FUNC3(ndev, offset, emu_wd_int.value);
		offset = FUNC0(i);
		FUNC3(ndev, offset, emu_ge_int.value);
	}
}