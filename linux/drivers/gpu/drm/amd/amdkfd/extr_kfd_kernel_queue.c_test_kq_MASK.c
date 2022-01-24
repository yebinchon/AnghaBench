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
typedef  int uint32_t ;
struct kfd_dev {int dummy; } ;
struct TYPE_2__ {int (* acquire_packet_buffer ) (struct kernel_queue*,int,int**) ;int /*<<< orphan*/  (* submit_packet ) (struct kernel_queue*) ;} ;
struct kernel_queue {int nop_packet; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  KFD_QUEUE_TYPE_HIQ ; 
 struct kernel_queue* FUNC0 (struct kfd_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct kernel_queue*,int,int**) ; 
 int /*<<< orphan*/  FUNC3 (struct kernel_queue*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static __attribute__((unused)) void FUNC5(struct kfd_dev *dev)
{
	struct kernel_queue *kq;
	uint32_t *buffer, i;
	int retval;

	FUNC1("Starting kernel queue test\n");

	kq = FUNC0(dev, KFD_QUEUE_TYPE_HIQ);
	if (FUNC4(!kq)) {
		FUNC1("  Failed to initialize HIQ\n");
		FUNC1("Kernel queue test failed\n");
		return;
	}

	retval = kq->ops.acquire_packet_buffer(kq, 5, &buffer);
	if (FUNC4(retval != 0)) {
		FUNC1("  Failed to acquire packet buffer\n");
		FUNC1("Kernel queue test failed\n");
		return;
	}
	for (i = 0; i < 5; i++)
		buffer[i] = kq->nop_packet;
	kq->ops.submit_packet(kq);

	FUNC1("Ending kernel queue test\n");
}