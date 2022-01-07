
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ mode; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
struct omap_ssi_port {int pdev; int lock; int brkqueue; TYPE_3__ ssr; scalar_t__ sst_base; TYPE_2__ sst; } ;
struct omap_ssi_controller {scalar_t__ sys; } ;
struct TYPE_4__ {int parent; } ;
struct hsi_port {int num; TYPE_1__ device; } ;
struct hsi_msg {scalar_t__ ttype; int link; int status; int (* complete ) (struct hsi_msg*) ;int cl; } ;
struct hsi_controller {int dummy; } ;


 int EINVAL ;
 scalar_t__ HSI_MSG_WRITE ;
 int HSI_STATUS_COMPLETED ;
 int HSI_STATUS_PROCEEDING ;
 int SSI_BREAKDETECTED ;
 scalar_t__ SSI_MODE_FRAME ;
 scalar_t__ SSI_MPU_ENABLE_REG (int ,int ) ;
 scalar_t__ SSI_SST_BREAK_REG ;
 struct omap_ssi_controller* hsi_controller_drvdata (struct hsi_controller*) ;
 struct hsi_port* hsi_get_port (int ) ;
 struct omap_ssi_port* hsi_port_drvdata (struct hsi_port*) ;
 int list_add_tail (int *,int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int readl (scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct hsi_msg*) ;
 struct hsi_controller* to_hsi_controller (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ssi_async_break(struct hsi_msg *msg)
{
 struct hsi_port *port = hsi_get_port(msg->cl);
 struct omap_ssi_port *omap_port = hsi_port_drvdata(port);
 struct hsi_controller *ssi = to_hsi_controller(port->device.parent);
 struct omap_ssi_controller *omap_ssi = hsi_controller_drvdata(ssi);
 int err = 0;
 u32 tmp;

 pm_runtime_get_sync(omap_port->pdev);
 if (msg->ttype == HSI_MSG_WRITE) {
  if (omap_port->sst.mode != SSI_MODE_FRAME) {
   err = -EINVAL;
   goto out;
  }
  writel(1, omap_port->sst_base + SSI_SST_BREAK_REG);
  msg->status = HSI_STATUS_COMPLETED;
  msg->complete(msg);
 } else {
  if (omap_port->ssr.mode != SSI_MODE_FRAME) {
   err = -EINVAL;
   goto out;
  }
  spin_lock_bh(&omap_port->lock);
  tmp = readl(omap_ssi->sys +
     SSI_MPU_ENABLE_REG(port->num, 0));
  writel(tmp | SSI_BREAKDETECTED,
   omap_ssi->sys + SSI_MPU_ENABLE_REG(port->num, 0));
  msg->status = HSI_STATUS_PROCEEDING;
  list_add_tail(&msg->link, &omap_port->brkqueue);
  spin_unlock_bh(&omap_port->lock);
 }
out:
 pm_runtime_mark_last_busy(omap_port->pdev);
 pm_runtime_put_autosuspend(omap_port->pdev);

 return err;
}
