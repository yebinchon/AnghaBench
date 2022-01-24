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
typedef  scalar_t__ uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HQD_N_REGS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct amdgpu_device* FUNC2 (struct kgd_dev*) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*,scalar_t__,scalar_t__) ; 
 scalar_t__** FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ mmSDMA0_RLC0_CSA_ADDR_HI ; 
 scalar_t__ mmSDMA0_RLC0_DOORBELL ; 
 scalar_t__ mmSDMA0_RLC0_IB_SUB_REMAIN ; 
 scalar_t__ mmSDMA0_RLC0_MIDCMD_CNTL ; 
 scalar_t__ mmSDMA0_RLC0_MIDCMD_DATA0 ; 
 scalar_t__ mmSDMA0_RLC0_MINOR_PTR_UPDATE ; 
 scalar_t__ mmSDMA0_RLC0_RB_CNTL ; 
 scalar_t__ mmSDMA0_RLC0_STATUS ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,...) ; 

__attribute__((used)) static int FUNC6(struct kgd_dev *kgd,
			     uint32_t engine_id, uint32_t queue_id,
			     uint32_t (**dump)[2], uint32_t *n_regs)
{
	struct amdgpu_device *adev = FUNC2(kgd);
	uint32_t sdma_base_addr = FUNC3(adev, engine_id, queue_id);
	uint32_t i = 0, reg;
#undef HQD_N_REGS
#define HQD_N_REGS (19+6+7+10)

	FUNC5("sdma dump engine id %d queue_id %d\n", engine_id, queue_id);
	FUNC5("sdma base addr %x\n", sdma_base_addr);

	*dump = FUNC4(HQD_N_REGS*2*sizeof(uint32_t), GFP_KERNEL);
	if (*dump == NULL)
		return -ENOMEM;

	for (reg = mmSDMA0_RLC0_RB_CNTL; reg <= mmSDMA0_RLC0_DOORBELL; reg++)
		FUNC0(sdma_base_addr + reg);
	for (reg = mmSDMA0_RLC0_STATUS; reg <= mmSDMA0_RLC0_CSA_ADDR_HI; reg++)
		FUNC0(sdma_base_addr + reg);
	for (reg = mmSDMA0_RLC0_IB_SUB_REMAIN;
	     reg <= mmSDMA0_RLC0_MINOR_PTR_UPDATE; reg++)
		FUNC0(sdma_base_addr + reg);
	for (reg = mmSDMA0_RLC0_MIDCMD_DATA0;
	     reg <= mmSDMA0_RLC0_MIDCMD_CNTL; reg++)
		FUNC0(sdma_base_addr + reg);

	FUNC1(i != HQD_N_REGS);
	*n_regs = i;

	return 0;
}