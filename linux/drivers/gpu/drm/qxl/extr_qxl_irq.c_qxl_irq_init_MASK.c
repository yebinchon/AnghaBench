#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct qxl_device {TYPE_2__* ram_header; TYPE_3__ ddev; scalar_t__ irq_received_error; int /*<<< orphan*/  irq_received_io_cmd; int /*<<< orphan*/  irq_received_cursor; int /*<<< orphan*/  irq_received_display; int /*<<< orphan*/  irq_received; int /*<<< orphan*/  client_monitors_config_work; int /*<<< orphan*/  io_cmd_event; int /*<<< orphan*/  cursor_event; int /*<<< orphan*/  display_event; } ;
struct TYPE_5__ {int /*<<< orphan*/  int_mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QXL_INTERRUPT_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qxl_client_monitors_config_work_func ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct qxl_device *qdev)
{
	int ret;

	FUNC4(&qdev->display_event);
	FUNC4(&qdev->cursor_event);
	FUNC4(&qdev->io_cmd_event);
	FUNC1(&qdev->client_monitors_config_work,
		  qxl_client_monitors_config_work_func);
	FUNC2(&qdev->irq_received, 0);
	FUNC2(&qdev->irq_received_display, 0);
	FUNC2(&qdev->irq_received_cursor, 0);
	FUNC2(&qdev->irq_received_io_cmd, 0);
	qdev->irq_received_error = 0;
	ret = FUNC3(&qdev->ddev, qdev->ddev.pdev->irq);
	qdev->ram_header->int_mask = QXL_INTERRUPT_MASK;
	if (FUNC5(ret != 0)) {
		FUNC0("Failed installing irq: %d\n", ret);
		return 1;
	}
	return 0;
}