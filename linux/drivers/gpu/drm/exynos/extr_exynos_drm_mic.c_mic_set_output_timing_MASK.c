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
typedef  int u32 ;
struct videomode {int hactive; int vactive; scalar_t__ hfront_porch; scalar_t__ hback_porch; scalar_t__ hsync_len; } ;
struct exynos_mic {scalar_t__ reg; int /*<<< orphan*/  i80_mode; int /*<<< orphan*/  dev; struct videomode vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ MIC_2D_OUTPUT_TIMING_0 ; 
 scalar_t__ MIC_2D_OUTPUT_TIMING_1 ; 
 scalar_t__ MIC_2D_OUTPUT_TIMING_2 ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct exynos_mic *mic)
{
	struct videomode vm = mic->vm;
	u32 reg, bs_size_2d;

	FUNC0(mic->dev, "w: %u, h: %u\n", vm.hactive, vm.vactive);
	bs_size_2d = ((vm.hactive >> 2) << 1) + (vm.vactive % 4);
	reg = FUNC1(bs_size_2d);
	FUNC5(reg, mic->reg + MIC_2D_OUTPUT_TIMING_2);

	if (!mic->i80_mode) {
		reg = FUNC4(vm.hsync_len) +
			FUNC3(vm.hsync_len + bs_size_2d +
					vm.hback_porch + vm.hfront_porch);
		FUNC5(reg, mic->reg + MIC_2D_OUTPUT_TIMING_0);

		reg = FUNC2(vm.hback_porch) +
			FUNC3(vm.hfront_porch);
		FUNC5(reg, mic->reg + MIC_2D_OUTPUT_TIMING_1);
	}
}