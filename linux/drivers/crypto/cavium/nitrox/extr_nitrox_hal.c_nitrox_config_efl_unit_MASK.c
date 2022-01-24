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
struct TYPE_2__ {int len_ovr; int d_left; int epci_decode_err; } ;
union efl_core_int_ena_w1s {unsigned long long value; TYPE_1__ s; } ;
typedef  int /*<<< orphan*/  u64 ;
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int NR_CLUSTERS ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_device*,int /*<<< orphan*/ ,unsigned long long) ; 

void FUNC4(struct nitrox_device *ndev)
{
	int i;

	for (i = 0; i < NR_CLUSTERS; i++) {
		union efl_core_int_ena_w1s efl_core_int;
		u64 offset;

		/* EFL core interrupts */
		offset = FUNC0(i);
		efl_core_int.value = 0;
		efl_core_int.s.len_ovr = 1;
		efl_core_int.s.d_left = 1;
		efl_core_int.s.epci_decode_err = 1;
		FUNC3(ndev, offset, efl_core_int.value);

		offset = FUNC1(i);
		FUNC3(ndev, offset, (~0ULL));
		offset = FUNC2(i);
		FUNC3(ndev, offset, (~0ULL));
	}
}