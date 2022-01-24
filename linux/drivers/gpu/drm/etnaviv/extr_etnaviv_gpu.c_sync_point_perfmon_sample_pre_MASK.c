#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct etnaviv_gpu {int dummy; } ;
struct etnaviv_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETNA_PM_PROCESS_PRE ; 
 int /*<<< orphan*/  VIVS_HI_CLOCK_CONTROL ; 
 int /*<<< orphan*/  VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS ; 
 int /*<<< orphan*/  VIVS_PM_POWER_CONTROLS ; 
 int /*<<< orphan*/  VIVS_PM_POWER_CONTROLS_ENABLE_MODULE_CLOCK_GATING ; 
 int /*<<< orphan*/  FUNC0 (struct etnaviv_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_gpu*,struct etnaviv_event*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct etnaviv_gpu *gpu,
	struct etnaviv_event *event)
{
	u32 val;

	/* disable clock gating */
	val = FUNC0(gpu, VIVS_PM_POWER_CONTROLS);
	val &= ~VIVS_PM_POWER_CONTROLS_ENABLE_MODULE_CLOCK_GATING;
	FUNC1(gpu, VIVS_PM_POWER_CONTROLS, val);

	/* enable debug register */
	val = FUNC0(gpu, VIVS_HI_CLOCK_CONTROL);
	val &= ~VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS;
	FUNC1(gpu, VIVS_HI_CLOCK_CONTROL, val);

	FUNC2(gpu, event, ETNA_PM_PROCESS_PRE);
}