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
struct sec_queue {scalar_t__ regs; int /*<<< orphan*/  task_irq; } ;

/* Variables and functions */
 scalar_t__ SEC_QUEUE_ENB_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sec_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sec_queue *queue)
{
	FUNC0(queue->task_irq);
	FUNC1(queue);
	FUNC2(0x0, queue->regs + SEC_QUEUE_ENB_REG);
}