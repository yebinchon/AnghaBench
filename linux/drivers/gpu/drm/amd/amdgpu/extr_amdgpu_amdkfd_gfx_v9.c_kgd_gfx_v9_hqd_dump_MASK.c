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
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HQD_N_REGS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct kgd_dev*,scalar_t__,scalar_t__) ; 
 struct amdgpu_device* FUNC4 (struct kgd_dev*) ; 
 scalar_t__** FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCP_HQD_PQ_WPTR_HI ; 
 int /*<<< orphan*/  mmCP_MQD_BASE_ADDR ; 
 int /*<<< orphan*/  FUNC6 (struct kgd_dev*) ; 

int FUNC7(struct kgd_dev *kgd,
			uint32_t pipe_id, uint32_t queue_id,
			uint32_t (**dump)[2], uint32_t *n_regs)
{
	struct amdgpu_device *adev = FUNC4(kgd);
	uint32_t i = 0, reg;
#define HQD_N_REGS 56
#define DUMP_REG(addr) do {				\
		if (WARN_ON_ONCE(i >= HQD_N_REGS))	\
			break;				\
		(*dump)[i][0] = (addr) << 2;		\
		(*dump)[i++][1] = RREG32(addr);		\
	} while (0)

	*dump = FUNC5(HQD_N_REGS * 2, sizeof(uint32_t), GFP_KERNEL);
	if (*dump == NULL)
		return -ENOMEM;

	FUNC3(kgd, pipe_id, queue_id);

	for (reg = FUNC1(GC, 0, mmCP_MQD_BASE_ADDR);
	     reg <= FUNC1(GC, 0, mmCP_HQD_PQ_WPTR_HI); reg++)
		DUMP_REG(reg);

	FUNC6(kgd);

	FUNC2(i != HQD_N_REGS);
	*n_regs = i;

	return 0;
}