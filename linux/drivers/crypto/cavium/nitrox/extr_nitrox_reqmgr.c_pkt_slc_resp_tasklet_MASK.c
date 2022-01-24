#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int resend; } ;
union nps_pkt_slc_cnts {int /*<<< orphan*/  value; TYPE_1__ s; } ;
struct nitrox_q_vector {struct nitrox_cmdq* cmdq; } ;
struct nitrox_cmdq {int /*<<< orphan*/  backlog_qflush; int /*<<< orphan*/  backlog_count; int /*<<< orphan*/  compl_cnt_csr_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_cmdq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(unsigned long data)
{
	struct nitrox_q_vector *qvec = (void *)(uintptr_t)(data);
	struct nitrox_cmdq *cmdq = qvec->cmdq;
	union nps_pkt_slc_cnts slc_cnts;

	/* read completion count */
	slc_cnts.value = FUNC2(cmdq->compl_cnt_csr_addr);
	/* resend the interrupt if more work to do */
	slc_cnts.s.resend = 1;

	FUNC1(cmdq);

	/*
	 * clear the interrupt with resend bit enabled,
	 * MSI-X interrupt generates if Completion count > Threshold
	 */
	FUNC4(slc_cnts.value, cmdq->compl_cnt_csr_addr);

	if (FUNC0(&cmdq->backlog_count))
		FUNC3(&cmdq->backlog_qflush);
}