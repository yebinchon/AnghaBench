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
struct nitrox_device {int nr_queues; struct nitrox_cmdq* pkt_inq; } ;
struct nitrox_cmdq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nitrox_cmdq*) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_cmdq*) ; 

__attribute__((used)) static void FUNC2(struct nitrox_device *ndev)
{
	int i;

	for (i = 0; i < ndev->nr_queues; i++) {
		struct nitrox_cmdq *cmdq = &ndev->pkt_inq[i];

		FUNC1(cmdq);
	}
	FUNC0(ndev->pkt_inq);
	ndev->pkt_inq = NULL;
}