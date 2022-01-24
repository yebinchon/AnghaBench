#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  rsize; } ;
union nps_pkt_in_instr_rsize {int value; TYPE_1__ s; } ;
struct TYPE_4__ {int dbell; } ;
union nps_pkt_in_instr_baoff_dbell {int value; TYPE_2__ s; } ;
typedef  int /*<<< orphan*/  u64 ;
struct nitrox_device {int nr_queues; int /*<<< orphan*/  qlen; struct nitrox_cmdq* pkt_inq; } ;
struct nitrox_cmdq {int dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct nitrox_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nitrox_device*,int) ; 

void FUNC7(struct nitrox_device *ndev)
{
	int i;

	for (i = 0; i < ndev->nr_queues; i++) {
		struct nitrox_cmdq *cmdq = &ndev->pkt_inq[i];
		union nps_pkt_in_instr_rsize pkt_in_rsize;
		union nps_pkt_in_instr_baoff_dbell pkt_in_dbell;
		u64 offset;

		FUNC6(ndev, i);

		/**
		 * step 4:
		 * configure ring base address 16-byte aligned,
		 * size and interrupt threshold.
		 */
		offset = FUNC0(i);
		FUNC5(ndev, offset, cmdq->dma);

		/* configure ring size */
		offset = FUNC2(i);
		pkt_in_rsize.value = 0;
		pkt_in_rsize.s.rsize = ndev->qlen;
		FUNC5(ndev, offset, pkt_in_rsize.value);

		/* set high threshold for pkt input ring interrupts */
		offset = FUNC3(i);
		FUNC5(ndev, offset, 0xffffffff);

		/* step 5: clear off door bell counts */
		offset = FUNC1(i);
		pkt_in_dbell.value = 0;
		pkt_in_dbell.s.dbell = 0xffffffff;
		FUNC5(ndev, offset, pkt_in_dbell.value);

		/* enable the ring */
		FUNC4(ndev, i);
	}
}