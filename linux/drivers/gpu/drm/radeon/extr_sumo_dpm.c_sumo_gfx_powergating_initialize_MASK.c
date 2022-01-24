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
struct radeon_device {scalar_t__ family; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_CG_VOLTAGE_CNTL ; 
 int /*<<< orphan*/  CG_PWR_GATING_CNTL ; 
 int /*<<< orphan*/  CG_SCRATCH2 ; 
 scalar_t__ CHIP_PALM ; 
 int FUNC0 (int) ; 
 int DPPD_MASK ; 
 int FUNC1 (int) ; 
 int DPPU_MASK ; 
 int FUNC2 (int) ; 
 int IT_MASK ; 
 int FUNC3 (int) ; 
 int MPPD_MASK ; 
 int FUNC4 (int) ; 
 int MPPU_MASK ; 
 int FUNC5 (int) ; 
 int PCP_MASK ; 
 int FUNC6 (int) ; 
 int PCV_MASK ; 
 int FUNC7 (int) ; 
 int PGP_MASK ; 
 int FUNC8 (int) ; 
 int PGS_MASK ; 
 int FUNC9 (int) ; 
 int PGU_MASK ; 
 int PWR_GATING_EN ; 
 int /*<<< orphan*/  RCU_PWR_GATING_CNTL ; 
 int /*<<< orphan*/  RCU_PWR_GATING_CNTL_2 ; 
 int /*<<< orphan*/  RCU_PWR_GATING_CNTL_3 ; 
 int /*<<< orphan*/  RCU_PWR_GATING_CNTL_4 ; 
 int /*<<< orphan*/  RCU_PWR_GATING_CNTL_5 ; 
 int /*<<< orphan*/  RCU_PWR_GATING_SEQ0 ; 
 int /*<<< orphan*/  RCU_PWR_GATING_SEQ1 ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int RSVD_MASK ; 
 int FUNC11 (int) ; 
 int RT_MASK ; 
 int /*<<< orphan*/  SUMO_GFXPOWERGATINGT_DFLT ; 
 int /*<<< orphan*/  SUMO_VOLTAGEDROPT_DFLT ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int,int*,int*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC18(struct radeon_device *rdev)
{
	u32 rcu_pwr_gating_cntl;
	u32 p, u;
	u32 p_c, p_p, d_p;
	u32 r_t, i_t;
	u32 xclk = FUNC16(rdev);

	if (rdev->family == CHIP_PALM) {
		p_c = 4;
		d_p = 10;
		r_t = 10;
		i_t = 4;
		p_p = 50 + 1000/200 + 6 * 32;
	} else {
		p_c = 16;
		d_p = 50;
		r_t = 50;
		i_t  = 50;
		p_p = 113;
	}

	FUNC12(CG_SCRATCH2, 0x01B60A17);

	FUNC15(SUMO_GFXPOWERGATINGT_DFLT,
			       xclk, 16, &p, &u);

	FUNC13(CG_PWR_GATING_CNTL, FUNC7(p) | FUNC9(u),
		 ~(PGP_MASK | PGU_MASK));

	FUNC15(SUMO_VOLTAGEDROPT_DFLT,
			       xclk, 16, &p, &u);

	FUNC13(CG_CG_VOLTAGE_CNTL, FUNC7(p) | FUNC9(u),
		 ~(PGP_MASK | PGU_MASK));

	if (rdev->family == CHIP_PALM) {
		FUNC14(RCU_PWR_GATING_SEQ0, 0x10103210);
		FUNC14(RCU_PWR_GATING_SEQ1, 0x10101010);
	} else {
		FUNC14(RCU_PWR_GATING_SEQ0, 0x76543210);
		FUNC14(RCU_PWR_GATING_SEQ1, 0xFEDCBA98);
	}

	rcu_pwr_gating_cntl = FUNC10(RCU_PWR_GATING_CNTL);
	rcu_pwr_gating_cntl &=
		~(RSVD_MASK | PCV_MASK | PGS_MASK);
	rcu_pwr_gating_cntl |= FUNC6(p_c) | FUNC8(1) | PWR_GATING_EN;
	if (rdev->family == CHIP_PALM) {
		rcu_pwr_gating_cntl &= ~PCP_MASK;
		rcu_pwr_gating_cntl |= FUNC5(0x77);
	}
	FUNC14(RCU_PWR_GATING_CNTL, rcu_pwr_gating_cntl);

	rcu_pwr_gating_cntl = FUNC10(RCU_PWR_GATING_CNTL_2);
	rcu_pwr_gating_cntl &= ~(MPPU_MASK | MPPD_MASK);
	rcu_pwr_gating_cntl |= FUNC4(p_p) | FUNC3(50);
	FUNC14(RCU_PWR_GATING_CNTL_2, rcu_pwr_gating_cntl);

	rcu_pwr_gating_cntl = FUNC10(RCU_PWR_GATING_CNTL_3);
	rcu_pwr_gating_cntl &= ~(DPPU_MASK | DPPD_MASK);
	rcu_pwr_gating_cntl |= FUNC1(d_p) | FUNC0(50);
	FUNC14(RCU_PWR_GATING_CNTL_3, rcu_pwr_gating_cntl);

	rcu_pwr_gating_cntl = FUNC10(RCU_PWR_GATING_CNTL_4);
	rcu_pwr_gating_cntl &= ~(RT_MASK | IT_MASK);
	rcu_pwr_gating_cntl |= FUNC11(r_t) | FUNC2(i_t);
	FUNC14(RCU_PWR_GATING_CNTL_4, rcu_pwr_gating_cntl);

	if (rdev->family == CHIP_PALM)
		FUNC14(RCU_PWR_GATING_CNTL_5, 0xA02);

	FUNC17(rdev);

	rcu_pwr_gating_cntl = FUNC10(RCU_PWR_GATING_CNTL);
	rcu_pwr_gating_cntl &=
		~(RSVD_MASK | PCV_MASK | PGS_MASK);
	rcu_pwr_gating_cntl |= FUNC6(p_c) | FUNC8(4) | PWR_GATING_EN;
	if (rdev->family == CHIP_PALM) {
		rcu_pwr_gating_cntl &= ~PCP_MASK;
		rcu_pwr_gating_cntl |= FUNC5(0x77);
	}
	FUNC14(RCU_PWR_GATING_CNTL, rcu_pwr_gating_cntl);

	if (rdev->family == CHIP_PALM) {
		rcu_pwr_gating_cntl = FUNC10(RCU_PWR_GATING_CNTL_2);
		rcu_pwr_gating_cntl &= ~(MPPU_MASK | MPPD_MASK);
		rcu_pwr_gating_cntl |= FUNC4(113) | FUNC3(50);
		FUNC14(RCU_PWR_GATING_CNTL_2, rcu_pwr_gating_cntl);

		rcu_pwr_gating_cntl = FUNC10(RCU_PWR_GATING_CNTL_3);
		rcu_pwr_gating_cntl &= ~(DPPU_MASK | DPPD_MASK);
		rcu_pwr_gating_cntl |= FUNC1(16) | FUNC0(50);
		FUNC14(RCU_PWR_GATING_CNTL_3, rcu_pwr_gating_cntl);
	}

	FUNC17(rdev);

	rcu_pwr_gating_cntl = FUNC10(RCU_PWR_GATING_CNTL);
	rcu_pwr_gating_cntl &=
		~(RSVD_MASK | PCV_MASK | PGS_MASK);
	rcu_pwr_gating_cntl |= FUNC8(5) | PWR_GATING_EN;

	if (rdev->family == CHIP_PALM) {
		rcu_pwr_gating_cntl |= FUNC6(4);
		rcu_pwr_gating_cntl &= ~PCP_MASK;
		rcu_pwr_gating_cntl |= FUNC5(0x77);
	} else
		rcu_pwr_gating_cntl |= FUNC6(11);
	FUNC14(RCU_PWR_GATING_CNTL, rcu_pwr_gating_cntl);

	if (rdev->family == CHIP_PALM) {
		rcu_pwr_gating_cntl = FUNC10(RCU_PWR_GATING_CNTL_2);
		rcu_pwr_gating_cntl &= ~(MPPU_MASK | MPPD_MASK);
		rcu_pwr_gating_cntl |= FUNC4(113) | FUNC3(50);
		FUNC14(RCU_PWR_GATING_CNTL_2, rcu_pwr_gating_cntl);

		rcu_pwr_gating_cntl = FUNC10(RCU_PWR_GATING_CNTL_3);
		rcu_pwr_gating_cntl &= ~(DPPU_MASK | DPPD_MASK);
		rcu_pwr_gating_cntl |= FUNC1(22) | FUNC0(50);
		FUNC14(RCU_PWR_GATING_CNTL_3, rcu_pwr_gating_cntl);
	}

	FUNC17(rdev);
}