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
union aqmq_en {void* value; scalar_t__ queue_enable; } ;
union aqmq_cmp_cnt {void* value; } ;
union aqmq_activity_stat {int /*<<< orphan*/  queue_active; void* value; } ;
typedef  int /*<<< orphan*/  u64 ;
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MAX_CSR_RETRIES ; 
 void* FUNC3 (struct nitrox_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nitrox_device*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct nitrox_device *ndev, int ring)
{
	union aqmq_en aqmq_en_reg;
	union aqmq_activity_stat activity_stat;
	union aqmq_cmp_cnt cmp_cnt;
	int max_retries = MAX_CSR_RETRIES;
	u64 offset;

	/* step 1: disable the queue */
	offset = FUNC2(ring);
	aqmq_en_reg.value = 0;
	aqmq_en_reg.queue_enable = 0;
	FUNC4(ndev, offset, aqmq_en_reg.value);

	/* step 2: wait for AQMQ_ACTIVITY_STATX[QUEUE_ACTIVE] to clear */
	FUNC6(100, 150);
	offset = FUNC0(ring);
	do {
		activity_stat.value = FUNC3(ndev, offset);
		if (!activity_stat.queue_active)
			break;
		FUNC5(50);
	} while (max_retries--);

	/* step 3: clear commands completed count */
	offset = FUNC1(ring);
	cmp_cnt.value = FUNC3(ndev, offset);
	FUNC4(ndev, offset, cmp_cnt.value);
	FUNC6(50, 100);
}