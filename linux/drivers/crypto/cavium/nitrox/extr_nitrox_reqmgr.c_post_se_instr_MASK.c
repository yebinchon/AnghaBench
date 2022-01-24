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
typedef  int /*<<< orphan*/  u8 ;
struct nitrox_softreq {int /*<<< orphan*/  tstamp; int /*<<< orphan*/  status; int /*<<< orphan*/  instr; struct nitrox_device* ndev; } ;
struct TYPE_2__ {int /*<<< orphan*/  posted; } ;
struct nitrox_device {TYPE_1__ stats; int /*<<< orphan*/  qlen; } ;
struct nitrox_cmdq {int write_idx; int instr_size; int /*<<< orphan*/  cmd_qlock; int /*<<< orphan*/  dbell_csr_addr; int /*<<< orphan*/ * base; } ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_POSTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_softreq*,struct nitrox_cmdq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct nitrox_softreq *sr,
			  struct nitrox_cmdq *cmdq)
{
	struct nitrox_device *ndev = sr->ndev;
	int idx;
	u8 *ent;

	FUNC6(&cmdq->cmd_qlock);

	idx = cmdq->write_idx;
	/* copy the instruction */
	ent = cmdq->base + (idx * cmdq->instr_size);
	FUNC4(ent, &sr->instr, cmdq->instr_size);

	FUNC1(&sr->status, REQ_POSTED);
	FUNC5(sr, cmdq);
	sr->tstamp = jiffies;
	/* flush the command queue updates */
	FUNC2();

	/* Ring doorbell with count 1 */
	FUNC8(1, cmdq->dbell_csr_addr);

	cmdq->write_idx = FUNC3(idx, 1, ndev->qlen);

	FUNC7(&cmdq->cmd_qlock);

	/* increment the posted command count */
	FUNC0(&ndev->stats.posted);
}