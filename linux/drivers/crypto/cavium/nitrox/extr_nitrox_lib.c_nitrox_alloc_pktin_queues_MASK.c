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
typedef  int /*<<< orphan*/  u64 ;
struct nps_pkt_instr {int dummy; } ;
struct nitrox_device {int nr_queues; struct nitrox_cmdq* pkt_inq; int /*<<< orphan*/  node; } ;
struct nitrox_cmdq {int qno; int instr_size; void* compl_cnt_csr_addr; void* dbell_csr_addr; struct nitrox_device* ndev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (struct nitrox_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PKTIN_Q_ALIGN_BYTES ; 
 struct nitrox_cmdq* FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nitrox_cmdq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_device*) ; 

__attribute__((used)) static int FUNC6(struct nitrox_device *ndev)
{
	int i, err;

	ndev->pkt_inq = FUNC3(ndev->nr_queues,
				     sizeof(struct nitrox_cmdq),
				     GFP_KERNEL, ndev->node);
	if (!ndev->pkt_inq)
		return -ENOMEM;

	for (i = 0; i < ndev->nr_queues; i++) {
		struct nitrox_cmdq *cmdq;
		u64 offset;

		cmdq = &ndev->pkt_inq[i];
		cmdq->ndev = ndev;
		cmdq->qno = i;
		cmdq->instr_size = sizeof(struct nps_pkt_instr);

		/* packet input ring doorbell address */
		offset = FUNC1(i);
		cmdq->dbell_csr_addr = FUNC0(ndev, offset);
		/* packet solicit port completion count address */
		offset = FUNC2(i);
		cmdq->compl_cnt_csr_addr = FUNC0(ndev, offset);

		err = FUNC4(cmdq, PKTIN_Q_ALIGN_BYTES);
		if (err)
			goto pktq_fail;
	}
	return 0;

pktq_fail:
	FUNC5(ndev);
	return err;
}