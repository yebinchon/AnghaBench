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
struct radeon_device {int dummy; } ;
struct evergreen_arb_registers {int mc_arb_rfsh_rate; int mc_arb_burst_time; int /*<<< orphan*/  mc_arb_dram_timing2; int /*<<< orphan*/  mc_arb_dram_timing; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC_ARB_BURST_TIME ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING2 ; 
 int /*<<< orphan*/  MC_ARB_RFSH_RATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int POWERMODE0_MASK ; 
 int POWERMODE0_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int STATE0_MASK ; 
 int STATE0_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
				   struct evergreen_arb_registers *arb_registers)
{
	u32 val;

	FUNC2(MC_ARB_DRAM_TIMING,  arb_registers->mc_arb_dram_timing);
	FUNC2(MC_ARB_DRAM_TIMING2, arb_registers->mc_arb_dram_timing2);

	val = (arb_registers->mc_arb_rfsh_rate & POWERMODE0_MASK) >>
		POWERMODE0_SHIFT;
	FUNC3(MC_ARB_RFSH_RATE, FUNC0(val), ~POWERMODE0_MASK);

	val = (arb_registers->mc_arb_burst_time & STATE0_MASK) >>
		STATE0_SHIFT;
	FUNC3(MC_ARB_BURST_TIME, FUNC1(val), ~STATE0_MASK);
}