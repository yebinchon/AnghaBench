#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int save_restore_gpu_addr; int clear_state_gpu_addr; } ;
struct TYPE_5__ {int max_shader_engines; int max_simds_per_se; } ;
struct TYPE_6__ {TYPE_1__ cayman; } ;
struct radeon_device {int flags; scalar_t__ family; TYPE_4__* rlc_fw; TYPE_3__ rlc; TYPE_2__ config; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_8__ {scalar_t__ data; } ;

/* Variables and functions */
 int ARUBA_RLC_UCODE_SIZE ; 
 int CAYMAN_RLC_UCODE_SIZE ; 
 int /*<<< orphan*/  CC_GC_SHADER_PIPE_CONFIG ; 
 scalar_t__ CHIP_ARUBA ; 
 scalar_t__ CHIP_CAYMAN ; 
 int EINVAL ; 
 int EVERGREEN_RLC_UCODE_SIZE ; 
 int RADEON_IS_IGP ; 
 int /*<<< orphan*/  RLC_HB_BASE ; 
 int /*<<< orphan*/  RLC_HB_CNTL ; 
 int /*<<< orphan*/  RLC_HB_RPTR ; 
 int /*<<< orphan*/  RLC_HB_WPTR ; 
 int /*<<< orphan*/  RLC_HB_WPTR_LSB_ADDR ; 
 int /*<<< orphan*/  RLC_HB_WPTR_MSB_ADDR ; 
 int /*<<< orphan*/  RLC_MC_CNTL ; 
 int /*<<< orphan*/  RLC_UCODE_ADDR ; 
 int /*<<< orphan*/  RLC_UCODE_CNTL ; 
 int /*<<< orphan*/  RLC_UCODE_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TN_RLC_CLEAR_STATE_RESTORE_BASE ; 
 int /*<<< orphan*/  TN_RLC_LB_ALWAYS_ACTIVE_SIMD_MASK ; 
 int /*<<< orphan*/  TN_RLC_LB_CNTR_INIT ; 
 int /*<<< orphan*/  TN_RLC_LB_CNTR_MAX ; 
 int /*<<< orphan*/  TN_RLC_LB_INIT_SIMD_MASK ; 
 int /*<<< orphan*/  TN_RLC_LB_PARAMS ; 
 int /*<<< orphan*/  TN_RLC_SAVE_AND_RESTORE_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 

int FUNC6(struct radeon_device *rdev)
{
	u32 i;
	const __be32 *fw_data;

	if (!rdev->rlc_fw)
		return -EINVAL;

	FUNC5(rdev);

	FUNC1(RLC_HB_CNTL, 0);

	if (rdev->flags & RADEON_IS_IGP) {
		if (rdev->family == CHIP_ARUBA) {
			u32 always_on_bitmap =
				3 | (3 << (16 * rdev->config.cayman.max_shader_engines));
			/* find out the number of active simds */
			u32 tmp = (FUNC0(CC_GC_SHADER_PIPE_CONFIG) & 0xffff0000) >> 16;
			tmp |= 0xffffffff << rdev->config.cayman.max_simds_per_se;
			tmp = FUNC4(~tmp);
			if (tmp == rdev->config.cayman.max_simds_per_se) {
				FUNC1(TN_RLC_LB_ALWAYS_ACTIVE_SIMD_MASK, always_on_bitmap);
				FUNC1(TN_RLC_LB_PARAMS, 0x00601004);
				FUNC1(TN_RLC_LB_INIT_SIMD_MASK, 0xffffffff);
				FUNC1(TN_RLC_LB_CNTR_INIT, 0x00000000);
				FUNC1(TN_RLC_LB_CNTR_MAX, 0x00002000);
			}
		} else {
			FUNC1(RLC_HB_WPTR_LSB_ADDR, 0);
			FUNC1(RLC_HB_WPTR_MSB_ADDR, 0);
		}
		FUNC1(TN_RLC_SAVE_AND_RESTORE_BASE, rdev->rlc.save_restore_gpu_addr >> 8);
		FUNC1(TN_RLC_CLEAR_STATE_RESTORE_BASE, rdev->rlc.clear_state_gpu_addr >> 8);
	} else {
		FUNC1(RLC_HB_BASE, 0);
		FUNC1(RLC_HB_RPTR, 0);
		FUNC1(RLC_HB_WPTR, 0);
		FUNC1(RLC_HB_WPTR_LSB_ADDR, 0);
		FUNC1(RLC_HB_WPTR_MSB_ADDR, 0);
	}
	FUNC1(RLC_MC_CNTL, 0);
	FUNC1(RLC_UCODE_CNTL, 0);

	fw_data = (const __be32 *)rdev->rlc_fw->data;
	if (rdev->family >= CHIP_ARUBA) {
		for (i = 0; i < ARUBA_RLC_UCODE_SIZE; i++) {
			FUNC1(RLC_UCODE_ADDR, i);
			FUNC1(RLC_UCODE_DATA, FUNC2(fw_data++));
		}
	} else if (rdev->family >= CHIP_CAYMAN) {
		for (i = 0; i < CAYMAN_RLC_UCODE_SIZE; i++) {
			FUNC1(RLC_UCODE_ADDR, i);
			FUNC1(RLC_UCODE_DATA, FUNC2(fw_data++));
		}
	} else {
		for (i = 0; i < EVERGREEN_RLC_UCODE_SIZE; i++) {
			FUNC1(RLC_UCODE_ADDR, i);
			FUNC1(RLC_UCODE_DATA, FUNC2(fw_data++));
		}
	}
	FUNC1(RLC_UCODE_ADDR, 0);

	FUNC3(rdev);

	return 0;
}