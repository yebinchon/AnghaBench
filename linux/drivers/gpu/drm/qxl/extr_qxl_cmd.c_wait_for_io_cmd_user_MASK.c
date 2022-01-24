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
typedef  int /*<<< orphan*/  uint8_t ;
struct qxl_device {long io_base; int last_sent_io_cmd; int /*<<< orphan*/  async_io_mutex; int /*<<< orphan*/  irq_received_io_cmd; int /*<<< orphan*/  io_cmd_event; } ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct qxl_device *qdev, uint8_t val, long port, bool intr)
{
	int irq_num;
	long addr = qdev->io_base + port;
	int ret;

	FUNC1(&qdev->async_io_mutex);
	irq_num = FUNC0(&qdev->irq_received_io_cmd);
	if (qdev->last_sent_io_cmd > irq_num) {
		if (intr)
			ret = FUNC4(qdev->io_cmd_event,
							       FUNC0(&qdev->irq_received_io_cmd) > irq_num, 5*HZ);
		else
			ret = FUNC5(qdev->io_cmd_event,
						 FUNC0(&qdev->irq_received_io_cmd) > irq_num, 5*HZ);
		/* 0 is timeout, just bail the "hw" has gone away */
		if (ret <= 0)
			goto out;
		irq_num = FUNC0(&qdev->irq_received_io_cmd);
	}
	FUNC3(val, addr);
	qdev->last_sent_io_cmd = irq_num + 1;
	if (intr)
		ret = FUNC4(qdev->io_cmd_event,
						       FUNC0(&qdev->irq_received_io_cmd) > irq_num, 5*HZ);
	else
		ret = FUNC5(qdev->io_cmd_event,
					 FUNC0(&qdev->irq_received_io_cmd) > irq_num, 5*HZ);
out:
	if (ret > 0)
		ret = 0;
	FUNC2(&qdev->async_io_mutex);
	return ret;
}