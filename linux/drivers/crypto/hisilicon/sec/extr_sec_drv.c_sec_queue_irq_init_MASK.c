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
struct sec_queue {int task_irq; int /*<<< orphan*/  name; struct sec_dev_info* dev_info; } ;
struct sec_dev_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sec_queue*) ; 
 int /*<<< orphan*/  sec_isr_handle ; 
 int /*<<< orphan*/  sec_isr_handle_th ; 

__attribute__((used)) static int FUNC3(struct sec_queue *queue)
{
	struct sec_dev_info *info = queue->dev_info;
	int irq = queue->task_irq;
	int ret;

	ret = FUNC2(irq, sec_isr_handle_th, sec_isr_handle,
				   IRQF_TRIGGER_RISING, queue->name, queue);
	if (ret) {
		FUNC0(info->dev, "request irq(%d) failed %d\n", irq, ret);
		return ret;
	}
	FUNC1(irq);

	return 0;
}