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
struct etnaviv_gpu {scalar_t__ clk_reg; scalar_t__ clk_bus; scalar_t__ clk_core; scalar_t__ clk_shader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct etnaviv_gpu *gpu)
{
	if (gpu->clk_shader)
		FUNC0(gpu->clk_shader);
	if (gpu->clk_core)
		FUNC0(gpu->clk_core);
	if (gpu->clk_bus)
		FUNC0(gpu->clk_bus);
	if (gpu->clk_reg)
		FUNC0(gpu->clk_reg);

	return 0;
}