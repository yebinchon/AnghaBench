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
typedef  int uint32_t ;
struct amdgpu_device {int /*<<< orphan*/  grbm_idx_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CU_MASK_USED_OFF_HYST ; 
 int /*<<< orphan*/  FIFO_SAMPLES ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  PG_IDLE_SAMPLES ; 
 int /*<<< orphan*/  PG_IDLE_SAMPLE_INTERVAL ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RESERVED ; 
 int /*<<< orphan*/  RLC_LB_CNTL ; 
 int RLC_LB_CNTL__LB_CNT_SPIM_ACTIVE_MASK ; 
 int /*<<< orphan*/  RLC_LB_PARAMS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int,int,int) ; 
 int /*<<< orphan*/  mmRLC_GPM_GENERAL_7 ; 
 int /*<<< orphan*/  mmRLC_LB_CNTL ; 
 int /*<<< orphan*/  mmRLC_LB_CNTR_INIT ; 
 int /*<<< orphan*/  mmRLC_LB_CNTR_MAX ; 
 int /*<<< orphan*/  mmRLC_LB_INIT_CU_MASK ; 
 int /*<<< orphan*/  mmRLC_LB_PARAMS ; 
 int /*<<< orphan*/  mmRLC_LB_THR_CONFIG_1 ; 
 int /*<<< orphan*/  mmRLC_LB_THR_CONFIG_2 ; 
 int /*<<< orphan*/  mmRLC_LB_THR_CONFIG_3 ; 
 int /*<<< orphan*/  mmRLC_LB_THR_CONFIG_4 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct amdgpu_device *adev)
{
	uint32_t data;

	/* set mmRLC_LB_THR_CONFIG_1/2/3/4 */
	FUNC2(GC, 0, mmRLC_LB_THR_CONFIG_1, 0x0000007F);
	FUNC2(GC, 0, mmRLC_LB_THR_CONFIG_2, 0x033388F8);
	FUNC2(GC, 0, mmRLC_LB_THR_CONFIG_3, 0x00000077);
	FUNC2(GC, 0, mmRLC_LB_THR_CONFIG_4, (0x10 | 0x27 << 8 | 0x02FA << 16));

	/* set mmRLC_LB_CNTR_INIT = 0x0000_0000 */
	FUNC2(GC, 0, mmRLC_LB_CNTR_INIT, 0x00000000);

	/* set mmRLC_LB_CNTR_MAX = 0x0000_0500 */
	FUNC2(GC, 0, mmRLC_LB_CNTR_MAX, 0x00000800);

	FUNC5(&adev->grbm_idx_mutex);
	/* set mmRLC_LB_INIT_CU_MASK thru broadcast mode to enable all SE/SH*/
	FUNC4(adev, 0xffffffff, 0xffffffff, 0xffffffff);
	FUNC2(GC, 0, mmRLC_LB_INIT_CU_MASK, 0xffffffff);

	/* set mmRLC_LB_PARAMS = 0x003F_1006 */
	data = FUNC0(0, RLC_LB_PARAMS, FIFO_SAMPLES, 0x0003);
	data |= FUNC0(data, RLC_LB_PARAMS, PG_IDLE_SAMPLES, 0x0010);
	data |= FUNC0(data, RLC_LB_PARAMS, PG_IDLE_SAMPLE_INTERVAL, 0x033F);
	FUNC2(GC, 0, mmRLC_LB_PARAMS, data);

	/* set mmRLC_GPM_GENERAL_7[31-16] = 0x00C0 */
	data = FUNC1(GC, 0, mmRLC_GPM_GENERAL_7);
	data &= 0x0000FFFF;
	data |= 0x00C00000;
	FUNC2(GC, 0, mmRLC_GPM_GENERAL_7, data);

	/*
	 * RLC_LB_ALWAYS_ACTIVE_CU_MASK = 0xFFF (12 CUs AON),
	 * programmed in gfx_v9_0_init_always_on_cu_mask()
	 */

	/* set RLC_LB_CNTL = 0x8000_0095, 31 bit is reserved,
	 * but used for RLC_LB_CNTL configuration */
	data = RLC_LB_CNTL__LB_CNT_SPIM_ACTIVE_MASK;
	data |= FUNC0(data, RLC_LB_CNTL, CU_MASK_USED_OFF_HYST, 0x09);
	data |= FUNC0(data, RLC_LB_CNTL, RESERVED, 0x80000);
	FUNC2(GC, 0, mmRLC_LB_CNTL, data);
	FUNC6(&adev->grbm_idx_mutex);

	FUNC3(adev);
}