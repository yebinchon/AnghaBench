#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_6__ {void* ulClock; } ;
struct TYPE_7__ {TYPE_2__ sReserved; void* ulTargetEngineClock; } ;
typedef  TYPE_3__ SET_ENGINE_CLOCK_PS_ALLOCATION ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND ; 
 int COMPUTE_ENGINE_PLL_PARAM ; 
 int /*<<< orphan*/  DynamicMemorySettings ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SET_CLOCK_FREQ_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct amdgpu_device *adev,
					     u32 eng_clock, u32 mem_clock)
{
	SET_ENGINE_CLOCK_PS_ALLOCATION args;
	int index = FUNC0(COMMAND, DynamicMemorySettings);
	u32 tmp;

	FUNC3(&args, 0, sizeof(args));

	tmp = eng_clock & SET_CLOCK_FREQ_MASK;
	tmp |= (COMPUTE_ENGINE_PLL_PARAM << 24);

	args.ulTargetEngineClock = FUNC2(tmp);
	if (mem_clock)
		args.sReserved.ulClock = FUNC2(mem_clock & SET_CLOCK_FREQ_MASK);

	FUNC1(adev->mode_info.atom_context, index, (uint32_t *)&args);
}