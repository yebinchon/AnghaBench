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
typedef  int u32 ;
struct TYPE_2__ {int revision; } ;
struct etnaviv_gpu {scalar_t__ sec_mode; TYPE_1__ identity; } ;

/* Variables and functions */
 scalar_t__ ETNA_SEC_KERNEL ; 
 int /*<<< orphan*/  GC2000 ; 
 int /*<<< orphan*/  GC320 ; 
 int /*<<< orphan*/  VIVS_HI_AXI_CONFIG ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  VIVS_HI_CHIP_TIME ; 
 int /*<<< orphan*/  VIVS_HI_INTR_ENBL ; 
 int /*<<< orphan*/  VIVS_MC_BUS_CONFIG ; 
 int FUNC2 (int) ; 
 int VIVS_MC_BUS_CONFIG_FE_BUS_CONFIG__MASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int VIVS_MC_BUS_CONFIG_TX_BUS_CONFIG__MASK ; 
 int /*<<< orphan*/  VIVS_MC_DEBUG_MEMORY ; 
 int /*<<< orphan*/  VIVS_MMUv2_AHB_CONTROL ; 
 int VIVS_MMUv2_AHB_CONTROL_NONSEC_ACCESS ; 
 int /*<<< orphan*/  FUNC4 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct etnaviv_gpu*) ; 
 scalar_t__ FUNC6 (struct etnaviv_gpu*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct etnaviv_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct etnaviv_gpu*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC9(struct etnaviv_gpu *gpu)
{
	if ((FUNC6(gpu, GC320, 0x5007) ||
	     FUNC6(gpu, GC320, 0x5220)) &&
	    FUNC7(gpu, VIVS_HI_CHIP_TIME) != 0x2062400) {
		u32 mc_memory_debug;

		mc_memory_debug = FUNC7(gpu, VIVS_MC_DEBUG_MEMORY) & ~0xff;

		if (gpu->identity.revision == 0x5007)
			mc_memory_debug |= 0x0c;
		else
			mc_memory_debug |= 0x08;

		FUNC8(gpu, VIVS_MC_DEBUG_MEMORY, mc_memory_debug);
	}

	/* enable module-level clock gating */
	FUNC4(gpu);

	/*
	 * Update GPU AXI cache atttribute to "cacheable, no allocate".
	 * This is necessary to prevent the iMX6 SoC locking up.
	 */
	FUNC8(gpu, VIVS_HI_AXI_CONFIG,
		  FUNC1(2) |
		  FUNC0(2));

	/* GC2000 rev 5108 needs a special bus config */
	if (FUNC6(gpu, GC2000, 0x5108)) {
		u32 bus_config = FUNC7(gpu, VIVS_MC_BUS_CONFIG);
		bus_config &= ~(VIVS_MC_BUS_CONFIG_FE_BUS_CONFIG__MASK |
				VIVS_MC_BUS_CONFIG_TX_BUS_CONFIG__MASK);
		bus_config |= FUNC2(1) |
			      FUNC3(0);
		FUNC8(gpu, VIVS_MC_BUS_CONFIG, bus_config);
	}

	if (gpu->sec_mode == ETNA_SEC_KERNEL) {
		u32 val = FUNC7(gpu, VIVS_MMUv2_AHB_CONTROL);
		val |= VIVS_MMUv2_AHB_CONTROL_NONSEC_ACCESS;
		FUNC8(gpu, VIVS_MMUv2_AHB_CONTROL, val);
	}

	/* setup the pulse eater */
	FUNC5(gpu);

	FUNC8(gpu, VIVS_HI_INTR_ENBL, ~0U);
}