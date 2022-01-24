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
typedef  size_t u32 ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef  enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;

/* Variables and functions */
#define  AMDGPU_IRQ_STATE_DISABLE 129 
#define  AMDGPU_IRQ_STATE_ENABLE 128 
 size_t FUNC0 (size_t*) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t) ; 
 size_t* ecc_umc_mcumc_ctrl_addrs ; 
 size_t* ecc_umc_mcumc_ctrl_mask_addrs ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev,
		struct amdgpu_irq_src *src,
		unsigned type,
		enum amdgpu_interrupt_state state)
{
	u32 bits, i, tmp, reg;

	bits = 0x7f;

	switch (state) {
	case AMDGPU_IRQ_STATE_DISABLE:
		for (i = 0; i < FUNC0(ecc_umc_mcumc_ctrl_addrs); i++) {
			reg = ecc_umc_mcumc_ctrl_addrs[i];
			tmp = FUNC1(reg);
			tmp &= ~bits;
			FUNC2(reg, tmp);
		}
		for (i = 0; i < FUNC0(ecc_umc_mcumc_ctrl_mask_addrs); i++) {
			reg = ecc_umc_mcumc_ctrl_mask_addrs[i];
			tmp = FUNC1(reg);
			tmp &= ~bits;
			FUNC2(reg, tmp);
		}
		break;
	case AMDGPU_IRQ_STATE_ENABLE:
		for (i = 0; i < FUNC0(ecc_umc_mcumc_ctrl_addrs); i++) {
			reg = ecc_umc_mcumc_ctrl_addrs[i];
			tmp = FUNC1(reg);
			tmp |= bits;
			FUNC2(reg, tmp);
		}
		for (i = 0; i < FUNC0(ecc_umc_mcumc_ctrl_mask_addrs); i++) {
			reg = ecc_umc_mcumc_ctrl_mask_addrs[i];
			tmp = FUNC1(reg);
			tmp |= bits;
			FUNC2(reg, tmp);
		}
		break;
	default:
		break;
	}

	return 0;
}