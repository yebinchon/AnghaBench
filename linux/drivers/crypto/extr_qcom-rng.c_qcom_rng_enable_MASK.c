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
struct qcom_rng {int /*<<< orphan*/  clk; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ PRNG_CONFIG ; 
 int PRNG_CONFIG_HW_ENABLE ; 
 scalar_t__ PRNG_LFSR_CFG ; 
 int PRNG_LFSR_CFG_CLOCKS ; 
 int PRNG_LFSR_CFG_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct qcom_rng *rng)
{
	u32 val;
	int ret;

	ret = FUNC1(rng->clk);
	if (ret)
		return ret;

	/* Enable PRNG only if it is not already enabled */
	val = FUNC2(rng->base + PRNG_CONFIG);
	if (val & PRNG_CONFIG_HW_ENABLE)
		goto already_enabled;

	val = FUNC2(rng->base + PRNG_LFSR_CFG);
	val &= ~PRNG_LFSR_CFG_MASK;
	val |= PRNG_LFSR_CFG_CLOCKS;
	FUNC3(val, rng->base + PRNG_LFSR_CFG);

	val = FUNC2(rng->base + PRNG_CONFIG);
	val |= PRNG_CONFIG_HW_ENABLE;
	FUNC3(val, rng->base + PRNG_CONFIG);

already_enabled:
	FUNC0(rng->clk);

	return 0;
}