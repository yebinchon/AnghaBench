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
typedef  int uint32_t ;
struct TYPE_4__ {int sdma_vm_addr; } ;
struct queue {TYPE_2__ properties; TYPE_1__* process; } ;
struct qcm_process_device {int dummy; } ;
struct device_queue_manager {int dummy; } ;
struct TYPE_3__ {scalar_t__ is_32bit_user_mode; } ;

/* Variables and functions */
 int SDMA0_RLC0_VIRTUAL_ADDR__ATC__SHIFT ; 
 int SDMA0_RLC0_VIRTUAL_ADDR__PTR32__SHIFT ; 
 int SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE_MASK ; 
 int SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE__SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qcm_process_device*) ; 

__attribute__((used)) static void FUNC3(struct device_queue_manager *dqm, struct queue *q,
				struct qcm_process_device *qpd)
{
	uint32_t value = (1 << SDMA0_RLC0_VIRTUAL_ADDR__ATC__SHIFT);

	if (q->process->is_32bit_user_mode)
		value |= (1 << SDMA0_RLC0_VIRTUAL_ADDR__PTR32__SHIFT) |
				FUNC0(FUNC2(qpd));
	else
		value |= ((FUNC1(FUNC2(qpd))) <<
				SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE__SHIFT) &
				SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE_MASK;

	q->properties.sdma_vm_addr = value;
}