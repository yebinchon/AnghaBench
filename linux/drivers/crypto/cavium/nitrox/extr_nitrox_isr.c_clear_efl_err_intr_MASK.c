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
struct TYPE_2__ {scalar_t__ se_err; } ;
union efl_core_int {TYPE_1__ s; void* value; } ;
typedef  void* u64 ;
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int NR_CLUSTERS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,void*) ; 
 void* FUNC4 (struct nitrox_device*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_device*,void*,void*) ; 

__attribute__((used)) static void FUNC6(struct nitrox_device *ndev)
{
	int i;

	for (i = 0; i < NR_CLUSTERS; i++) {
		union efl_core_int core_int;
		u64 value, offset;

		offset = FUNC1(i);
		core_int.value = FUNC4(ndev, offset);
		FUNC5(ndev, offset, core_int.value);
		FUNC3(FUNC0(ndev), "ELF_CORE(%d)_INT  0x%016llx\n",
				    i, core_int.value);
		if (core_int.s.se_err) {
			offset = FUNC2(i);
			value = FUNC4(ndev, offset);
			FUNC5(ndev, offset, value);
		}
	}
}