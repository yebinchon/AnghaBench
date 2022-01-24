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
struct qxl_device {scalar_t__ io_base; TYPE_1__* ram_header; int /*<<< orphan*/  client_monitors_config_work; int /*<<< orphan*/  irq_received_error; int /*<<< orphan*/  io_cmd_event; int /*<<< orphan*/  irq_received_io_cmd; int /*<<< orphan*/  cursor_event; int /*<<< orphan*/  irq_received_cursor; int /*<<< orphan*/  display_event; int /*<<< orphan*/  irq_received_display; int /*<<< orphan*/  irq_received; } ;
struct drm_device {scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  int_mask; int /*<<< orphan*/  int_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int QXL_INTERRUPT_CLIENT_MONITORS_CONFIG ; 
 int QXL_INTERRUPT_CURSOR ; 
 int QXL_INTERRUPT_DISPLAY ; 
 int QXL_INTERRUPT_ERROR ; 
 int QXL_INTERRUPT_IO_CMD ; 
 int /*<<< orphan*/  QXL_INTERRUPT_MASK ; 
 scalar_t__ QXL_IO_UPDATE_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct qxl_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC7(int irq, void *arg)
{
	struct drm_device *dev = (struct drm_device *) arg;
	struct qxl_device *qdev = (struct qxl_device *)dev->dev_private;
	uint32_t pending;

	pending = FUNC6(&qdev->ram_header->int_pending, 0);

	if (!pending)
		return IRQ_NONE;

	FUNC1(&qdev->irq_received);

	if (pending & QXL_INTERRUPT_DISPLAY) {
		FUNC1(&qdev->irq_received_display);
		FUNC5(&qdev->display_event);
		FUNC3(qdev, false);
	}
	if (pending & QXL_INTERRUPT_CURSOR) {
		FUNC1(&qdev->irq_received_cursor);
		FUNC5(&qdev->cursor_event);
	}
	if (pending & QXL_INTERRUPT_IO_CMD) {
		FUNC1(&qdev->irq_received_io_cmd);
		FUNC5(&qdev->io_cmd_event);
	}
	if (pending & QXL_INTERRUPT_ERROR) {
		/* TODO: log it, reset device (only way to exit this condition)
		 * (do it a certain number of times, afterwards admit defeat,
		 * to avoid endless loops).
		 */
		qdev->irq_received_error++;
		FUNC0("driver is in bug mode\n");
	}
	if (pending & QXL_INTERRUPT_CLIENT_MONITORS_CONFIG) {
		FUNC4(&qdev->client_monitors_config_work);
	}
	qdev->ram_header->int_mask = QXL_INTERRUPT_MASK;
	FUNC2(0, qdev->io_base + QXL_IO_UPDATE_IRQ);
	return IRQ_HANDLED;
}