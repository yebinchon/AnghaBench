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
struct qm_dfx_registers {scalar_t__ reg_offset; } ;
struct hisi_qm {scalar_t__ io_base; } ;

/* Variables and functions */
 int CNT_CYC_REGS_NUM ; 
 scalar_t__ QM_DFX_CNT_CLR_CE ; 
 scalar_t__ QM_DFX_CQE_CNT_VF_CQN ; 
 scalar_t__ QM_DFX_SQE_CNT_VF_SQN ; 
 struct qm_dfx_registers* qm_dfx_regs ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

void FUNC2(struct hisi_qm *qm)
{
	struct qm_dfx_registers *regs;
	int i;

	/* clear current_q */
	FUNC1(0x0, qm->io_base + QM_DFX_SQE_CNT_VF_SQN);
	FUNC1(0x0, qm->io_base + QM_DFX_CQE_CNT_VF_CQN);

	/*
	 * these registers are reading and clearing, so clear them after
	 * reading them.
	 */
	FUNC1(0x1, qm->io_base + QM_DFX_CNT_CLR_CE);

	regs = qm_dfx_regs;
	for (i = 0; i < CNT_CYC_REGS_NUM; i++) {
		FUNC0(qm->io_base + regs->reg_offset);
		regs++;
	}

	FUNC1(0x0, qm->io_base + QM_DFX_CNT_CLR_CE);
}