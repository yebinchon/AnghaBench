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
struct mtk_ddp_comp {scalar_t__ regs; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ DISP_REG_OVL_SRC_CON ; 
 unsigned int OVL_RDMA_MEM_GMC ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct mtk_ddp_comp *comp, unsigned int idx)
{
	unsigned int reg;

	FUNC4(0x1, comp->regs + FUNC1(idx));
	FUNC4(OVL_RDMA_MEM_GMC, comp->regs + FUNC2(idx));

	reg = FUNC3(comp->regs + DISP_REG_OVL_SRC_CON);
	reg = reg | FUNC0(idx);
	FUNC4(reg, comp->regs + DISP_REG_OVL_SRC_CON);
}