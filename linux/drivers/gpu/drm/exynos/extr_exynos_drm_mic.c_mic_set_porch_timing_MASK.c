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
typedef  scalar_t__ u32 ;
struct videomode {scalar_t__ hfront_porch; scalar_t__ hback_porch; scalar_t__ hactive; scalar_t__ hsync_len; scalar_t__ vfront_porch; scalar_t__ vback_porch; scalar_t__ vactive; scalar_t__ vsync_len; } ;
struct exynos_mic {scalar_t__ reg; struct videomode vm; } ;

/* Variables and functions */
 scalar_t__ MIC_INPUT_TIMING_0 ; 
 scalar_t__ MIC_INPUT_TIMING_1 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ MIC_V_TIMING_0 ; 
 scalar_t__ MIC_V_TIMING_1 ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct exynos_mic *mic)
{
	struct videomode vm = mic->vm;
	u32 reg;

	reg = FUNC3(vm.vsync_len) +
		FUNC2(vm.vsync_len + vm.vactive +
				vm.vback_porch + vm.vfront_porch);
	FUNC4(reg, mic->reg + MIC_V_TIMING_0);

	reg = FUNC0(vm.vback_porch) +
		FUNC1(vm.vfront_porch);
	FUNC4(reg, mic->reg + MIC_V_TIMING_1);

	reg = FUNC3(vm.hsync_len) +
		FUNC2(vm.hsync_len + vm.hactive +
				vm.hback_porch + vm.hfront_porch);
	FUNC4(reg, mic->reg + MIC_INPUT_TIMING_0);

	reg = FUNC0(vm.hback_porch) +
		FUNC1(vm.hfront_porch);
	FUNC4(reg, mic->reg + MIC_INPUT_TIMING_1);
}