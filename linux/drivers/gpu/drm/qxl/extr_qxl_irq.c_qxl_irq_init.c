
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pdev; } ;
struct qxl_device {TYPE_2__* ram_header; TYPE_3__ ddev; scalar_t__ irq_received_error; int irq_received_io_cmd; int irq_received_cursor; int irq_received_display; int irq_received; int client_monitors_config_work; int io_cmd_event; int cursor_event; int display_event; } ;
struct TYPE_5__ {int int_mask; } ;
struct TYPE_4__ {int irq; } ;


 int DRM_ERROR (char*,int) ;
 int INIT_WORK (int *,int ) ;
 int QXL_INTERRUPT_MASK ;
 int atomic_set (int *,int ) ;
 int drm_irq_install (TYPE_3__*,int ) ;
 int init_waitqueue_head (int *) ;
 int qxl_client_monitors_config_work_func ;
 scalar_t__ unlikely (int) ;

int qxl_irq_init(struct qxl_device *qdev)
{
 int ret;

 init_waitqueue_head(&qdev->display_event);
 init_waitqueue_head(&qdev->cursor_event);
 init_waitqueue_head(&qdev->io_cmd_event);
 INIT_WORK(&qdev->client_monitors_config_work,
    qxl_client_monitors_config_work_func);
 atomic_set(&qdev->irq_received, 0);
 atomic_set(&qdev->irq_received_display, 0);
 atomic_set(&qdev->irq_received_cursor, 0);
 atomic_set(&qdev->irq_received_io_cmd, 0);
 qdev->irq_received_error = 0;
 ret = drm_irq_install(&qdev->ddev, qdev->ddev.pdev->irq);
 qdev->ram_header->int_mask = QXL_INTERRUPT_MASK;
 if (unlikely(ret != 0)) {
  DRM_ERROR("Failed installing irq: %d\n", ret);
  return 1;
 }
 return 0;
}
