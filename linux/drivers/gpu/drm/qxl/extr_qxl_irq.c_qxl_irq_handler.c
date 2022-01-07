
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct qxl_device {scalar_t__ io_base; TYPE_1__* ram_header; int client_monitors_config_work; int irq_received_error; int io_cmd_event; int irq_received_io_cmd; int cursor_event; int irq_received_cursor; int display_event; int irq_received_display; int irq_received; } ;
struct drm_device {scalar_t__ dev_private; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int int_mask; int int_pending; } ;


 int DRM_WARN (char*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int QXL_INTERRUPT_CLIENT_MONITORS_CONFIG ;
 int QXL_INTERRUPT_CURSOR ;
 int QXL_INTERRUPT_DISPLAY ;
 int QXL_INTERRUPT_ERROR ;
 int QXL_INTERRUPT_IO_CMD ;
 int QXL_INTERRUPT_MASK ;
 scalar_t__ QXL_IO_UPDATE_IRQ ;
 int atomic_inc (int *) ;
 int outb (int ,scalar_t__) ;
 int qxl_queue_garbage_collect (struct qxl_device*,int) ;
 int schedule_work (int *) ;
 int wake_up_all (int *) ;
 int xchg (int *,int ) ;

irqreturn_t qxl_irq_handler(int irq, void *arg)
{
 struct drm_device *dev = (struct drm_device *) arg;
 struct qxl_device *qdev = (struct qxl_device *)dev->dev_private;
 uint32_t pending;

 pending = xchg(&qdev->ram_header->int_pending, 0);

 if (!pending)
  return IRQ_NONE;

 atomic_inc(&qdev->irq_received);

 if (pending & QXL_INTERRUPT_DISPLAY) {
  atomic_inc(&qdev->irq_received_display);
  wake_up_all(&qdev->display_event);
  qxl_queue_garbage_collect(qdev, 0);
 }
 if (pending & QXL_INTERRUPT_CURSOR) {
  atomic_inc(&qdev->irq_received_cursor);
  wake_up_all(&qdev->cursor_event);
 }
 if (pending & QXL_INTERRUPT_IO_CMD) {
  atomic_inc(&qdev->irq_received_io_cmd);
  wake_up_all(&qdev->io_cmd_event);
 }
 if (pending & QXL_INTERRUPT_ERROR) {




  qdev->irq_received_error++;
  DRM_WARN("driver is in bug mode\n");
 }
 if (pending & QXL_INTERRUPT_CLIENT_MONITORS_CONFIG) {
  schedule_work(&qdev->client_monitors_config_work);
 }
 qdev->ram_header->int_mask = QXL_INTERRUPT_MASK;
 outb(0, qdev->io_base + QXL_IO_UPDATE_IRQ);
 return IRQ_HANDLED;
}
