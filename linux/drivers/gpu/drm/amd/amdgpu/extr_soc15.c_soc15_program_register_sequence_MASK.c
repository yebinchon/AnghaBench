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
struct soc15_reg_golden {size_t hwip; size_t instance; size_t segment; int reg; int and_mask; int or_mask; } ;
struct amdgpu_device {int*** reg_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  mmPA_SC_BINNER_EVENT_CNTL_3 ; 
 int /*<<< orphan*/  mmPA_SC_ENHANCE ; 
 int /*<<< orphan*/  mmPA_SC_ENHANCE_1 ; 
 int /*<<< orphan*/  mmSH_MEM_CONFIG ; 

void FUNC4(struct amdgpu_device *adev,
					     const struct soc15_reg_golden *regs,
					     const u32 array_size)
{
	const struct soc15_reg_golden *entry;
	u32 tmp, reg;
	int i;

	for (i = 0; i < array_size; ++i) {
		entry = &regs[i];
		reg =  adev->reg_offset[entry->hwip][entry->instance][entry->segment] + entry->reg;

		if (entry->and_mask == 0xffffffff) {
			tmp = entry->or_mask;
		} else {
			tmp = FUNC0(reg);
			tmp &= ~(entry->and_mask);
			tmp |= (entry->or_mask & entry->and_mask);
		}

		if (reg == FUNC1(GC, 0, mmPA_SC_BINNER_EVENT_CNTL_3) ||
			reg == FUNC1(GC, 0, mmPA_SC_ENHANCE) ||
			reg == FUNC1(GC, 0, mmPA_SC_ENHANCE_1) ||
			reg == FUNC1(GC, 0, mmSH_MEM_CONFIG))
			FUNC3(reg, tmp);
		else
			FUNC2(reg, tmp);

	}

}