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
union aqmq_qsz {unsigned long long value; int /*<<< orphan*/  host_queue_size; } ;
union aqmq_drbl {unsigned long long value; int dbell_count; } ;
union aqmq_cmp_thr {unsigned long long value; int commands_completed_threshold; } ;
typedef  int /*<<< orphan*/  u64 ;
struct nitrox_device {int nr_queues; int /*<<< orphan*/  qlen; struct nitrox_cmdq** aqmq; } ;
struct nitrox_cmdq {unsigned long long dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nitrox_device*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (struct nitrox_device*,int) ; 

void FUNC8(struct nitrox_device *ndev)
{
	int ring;

	for (ring = 0; ring < ndev->nr_queues; ring++) {
		struct nitrox_cmdq *cmdq = ndev->aqmq[ring];
		union aqmq_drbl drbl;
		union aqmq_qsz qsize;
		union aqmq_cmp_thr cmp_thr;
		u64 offset;

		/* steps 1 - 3 */
		FUNC7(ndev, ring);

		/* step 4: clear doorbell count of ring */
		offset = FUNC2(ring);
		drbl.value = 0;
		drbl.dbell_count = 0xFFFFFFFF;
		FUNC6(ndev, offset, drbl.value);

		/* step 5: configure host ring details */

		/* set host address for next command of ring */
		offset = FUNC3(ring);
		FUNC6(ndev, offset, 0ULL);

		/* set host address of ring base */
		offset = FUNC0(ring);
		FUNC6(ndev, offset, cmdq->dma);

		/* set ring size */
		offset = FUNC4(ring);
		qsize.value = 0;
		qsize.host_queue_size = ndev->qlen;
		FUNC6(ndev, offset, qsize.value);

		/* set command completion threshold */
		offset = FUNC1(ring);
		cmp_thr.value = 0;
		cmp_thr.commands_completed_threshold = 1;
		FUNC6(ndev, offset, cmp_thr.value);

		/* step 6: enable the queue */
		FUNC5(ndev, ring);
	}
}