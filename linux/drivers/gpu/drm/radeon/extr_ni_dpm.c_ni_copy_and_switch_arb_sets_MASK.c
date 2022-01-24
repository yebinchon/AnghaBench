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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CG_ARB_REQ_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  MC_ARB_BURST_TIME ; 
 int /*<<< orphan*/  MC_ARB_CG ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING2 ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING2_1 ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING2_2 ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING2_3 ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING_1 ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING_2 ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING_3 ; 
#define  MC_CG_ARB_FREQ_F0 131 
#define  MC_CG_ARB_FREQ_F1 130 
#define  MC_CG_ARB_FREQ_F2 129 
#define  MC_CG_ARB_FREQ_F3 128 
 int /*<<< orphan*/  MC_CG_CONFIG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int STATE0_MASK ; 
 int STATE0_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int STATE1_MASK ; 
 int STATE1_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int STATE2_MASK ; 
 int STATE2_SHIFT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int STATE3_MASK ; 
 int STATE3_SHIFT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct radeon_device *rdev,
				u32 arb_freq_src, u32 arb_freq_dest)
{
	u32 mc_arb_dram_timing;
	u32 mc_arb_dram_timing2;
	u32 burst_time;
	u32 mc_cg_config;

	switch (arb_freq_src) {
	case MC_CG_ARB_FREQ_F0:
		mc_arb_dram_timing  = FUNC1(MC_ARB_DRAM_TIMING);
		mc_arb_dram_timing2 = FUNC1(MC_ARB_DRAM_TIMING2);
		burst_time = (FUNC1(MC_ARB_BURST_TIME) & STATE0_MASK) >> STATE0_SHIFT;
		break;
	case MC_CG_ARB_FREQ_F1:
		mc_arb_dram_timing  = FUNC1(MC_ARB_DRAM_TIMING_1);
		mc_arb_dram_timing2 = FUNC1(MC_ARB_DRAM_TIMING2_1);
		burst_time = (FUNC1(MC_ARB_BURST_TIME) & STATE1_MASK) >> STATE1_SHIFT;
		break;
	case MC_CG_ARB_FREQ_F2:
		mc_arb_dram_timing  = FUNC1(MC_ARB_DRAM_TIMING_2);
		mc_arb_dram_timing2 = FUNC1(MC_ARB_DRAM_TIMING2_2);
		burst_time = (FUNC1(MC_ARB_BURST_TIME) & STATE2_MASK) >> STATE2_SHIFT;
		break;
	case MC_CG_ARB_FREQ_F3:
		mc_arb_dram_timing  = FUNC1(MC_ARB_DRAM_TIMING_3);
		mc_arb_dram_timing2 = FUNC1(MC_ARB_DRAM_TIMING2_3);
		burst_time = (FUNC1(MC_ARB_BURST_TIME) & STATE3_MASK) >> STATE3_SHIFT;
		break;
	default:
		return -EINVAL;
	}

	switch (arb_freq_dest) {
	case MC_CG_ARB_FREQ_F0:
		FUNC6(MC_ARB_DRAM_TIMING, mc_arb_dram_timing);
		FUNC6(MC_ARB_DRAM_TIMING2, mc_arb_dram_timing2);
		FUNC7(MC_ARB_BURST_TIME, FUNC2(burst_time), ~STATE0_MASK);
		break;
	case MC_CG_ARB_FREQ_F1:
		FUNC6(MC_ARB_DRAM_TIMING_1, mc_arb_dram_timing);
		FUNC6(MC_ARB_DRAM_TIMING2_1, mc_arb_dram_timing2);
		FUNC7(MC_ARB_BURST_TIME, FUNC3(burst_time), ~STATE1_MASK);
		break;
	case MC_CG_ARB_FREQ_F2:
		FUNC6(MC_ARB_DRAM_TIMING_2, mc_arb_dram_timing);
		FUNC6(MC_ARB_DRAM_TIMING2_2, mc_arb_dram_timing2);
		FUNC7(MC_ARB_BURST_TIME, FUNC4(burst_time), ~STATE2_MASK);
		break;
	case MC_CG_ARB_FREQ_F3:
		FUNC6(MC_ARB_DRAM_TIMING_3, mc_arb_dram_timing);
		FUNC6(MC_ARB_DRAM_TIMING2_3, mc_arb_dram_timing2);
		FUNC7(MC_ARB_BURST_TIME, FUNC5(burst_time), ~STATE3_MASK);
		break;
	default:
		return -EINVAL;
	}

	mc_cg_config = FUNC1(MC_CG_CONFIG) | 0x0000000F;
	FUNC6(MC_CG_CONFIG, mc_cg_config);
	FUNC7(MC_ARB_CG, FUNC0(arb_freq_dest), ~CG_ARB_REQ_MASK);

	return 0;
}