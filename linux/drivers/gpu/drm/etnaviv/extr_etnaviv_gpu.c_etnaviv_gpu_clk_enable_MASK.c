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
struct etnaviv_gpu {scalar_t__ clk_bus; scalar_t__ clk_core; scalar_t__ clk_shader; scalar_t__ clk_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct etnaviv_gpu *gpu)
{
	int ret;

	if (gpu->clk_reg) {
		ret = FUNC1(gpu->clk_reg);
		if (ret)
			return ret;
	}

	if (gpu->clk_bus) {
		ret = FUNC1(gpu->clk_bus);
		if (ret)
			return ret;
	}

	if (gpu->clk_core) {
		ret = FUNC1(gpu->clk_core);
		if (ret)
			goto disable_clk_bus;
	}

	if (gpu->clk_shader) {
		ret = FUNC1(gpu->clk_shader);
		if (ret)
			goto disable_clk_core;
	}

	return 0;

disable_clk_core:
	if (gpu->clk_core)
		FUNC0(gpu->clk_core);
disable_clk_bus:
	if (gpu->clk_bus)
		FUNC0(gpu->clk_bus);

	return ret;
}