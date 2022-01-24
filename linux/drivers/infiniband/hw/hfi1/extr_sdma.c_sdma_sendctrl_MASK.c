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
typedef  int u64 ;
struct sdma_engine {int p_senddmactrl; int /*<<< orphan*/  senddmactrl_lock; int /*<<< orphan*/  this_idx; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_SDMA_CLEANUP_SMASK ; 
 int /*<<< orphan*/  CTRL_SDMA_ENABLE_SMASK ; 
 int /*<<< orphan*/  CTRL_SDMA_HALT_SMASK ; 
 int /*<<< orphan*/  CTRL_SDMA_INT_ENABLE_SMASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int SDMA_SENDCTRL_OP_CLEANUP ; 
 unsigned int SDMA_SENDCTRL_OP_ENABLE ; 
 unsigned int SDMA_SENDCTRL_OP_HALT ; 
 unsigned int SDMA_SENDCTRL_OP_INTENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sdma_engine*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct sdma_engine*,int,int) ; 

__attribute__((used)) static void FUNC6(struct sdma_engine *sde, unsigned op)
{
	u64 set_senddmactrl = 0;
	u64 clr_senddmactrl = 0;
	unsigned long flags;

#ifdef CONFIG_SDMA_VERBOSITY
	dd_dev_err(sde->dd, "CONFIG SDMA(%u) senddmactrl E=%d I=%d H=%d C=%d\n",
		   sde->this_idx,
		   (op & SDMA_SENDCTRL_OP_ENABLE) ? 1 : 0,
		   (op & SDMA_SENDCTRL_OP_INTENABLE) ? 1 : 0,
		   (op & SDMA_SENDCTRL_OP_HALT) ? 1 : 0,
		   (op & SDMA_SENDCTRL_OP_CLEANUP) ? 1 : 0);
#endif

	if (op & SDMA_SENDCTRL_OP_ENABLE)
		set_senddmactrl |= FUNC0(CTRL_SDMA_ENABLE_SMASK);
	else
		clr_senddmactrl |= FUNC0(CTRL_SDMA_ENABLE_SMASK);

	if (op & SDMA_SENDCTRL_OP_INTENABLE)
		set_senddmactrl |= FUNC0(CTRL_SDMA_INT_ENABLE_SMASK);
	else
		clr_senddmactrl |= FUNC0(CTRL_SDMA_INT_ENABLE_SMASK);

	if (op & SDMA_SENDCTRL_OP_HALT)
		set_senddmactrl |= FUNC0(CTRL_SDMA_HALT_SMASK);
	else
		clr_senddmactrl |= FUNC0(CTRL_SDMA_HALT_SMASK);

	FUNC3(&sde->senddmactrl_lock, flags);

	sde->p_senddmactrl |= set_senddmactrl;
	sde->p_senddmactrl &= ~clr_senddmactrl;

	if (op & SDMA_SENDCTRL_OP_CLEANUP)
		FUNC5(sde, FUNC0(CTRL),
			      sde->p_senddmactrl |
			      FUNC0(CTRL_SDMA_CLEANUP_SMASK));
	else
		FUNC5(sde, FUNC0(CTRL), sde->p_senddmactrl);

	FUNC4(&sde->senddmactrl_lock, flags);

#ifdef CONFIG_SDMA_VERBOSITY
	sdma_dumpstate(sde);
#endif
}