
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t channels; } ;
struct TYPE_5__ {size_t channels; } ;
struct omap_ssi_port {int pdev; int lock; struct list_head* rxqueue; TYPE_3__ ssr; struct list_head* txqueue; TYPE_2__ sst; } ;
struct list_head {int dummy; } ;
struct hsi_port {int device; } ;
struct TYPE_4__ {int nents; } ;
struct hsi_msg {size_t channel; int ttype; int status; int link; scalar_t__ break_frame; TYPE_1__ sgt; int cl; } ;


 int BUG_ON (int) ;
 int ENOSYS ;
 int HSI_STATUS_ERROR ;
 int HSI_STATUS_QUEUED ;
 int dev_dbg (int *,char*,int ,int ,size_t) ;
 struct hsi_port* hsi_get_port (int ) ;
 struct omap_ssi_port* hsi_port_drvdata (struct hsi_port*) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_del (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssi_async_break (struct hsi_msg*) ;
 int ssi_start_transfer (struct list_head*) ;

__attribute__((used)) static int ssi_async(struct hsi_msg *msg)
{
 struct hsi_port *port = hsi_get_port(msg->cl);
 struct omap_ssi_port *omap_port = hsi_port_drvdata(port);
 struct list_head *queue;
 int err = 0;

 BUG_ON(!msg);

 if (msg->sgt.nents > 1)
  return -ENOSYS;

 if (msg->break_frame)
  return ssi_async_break(msg);

 if (msg->ttype) {
  BUG_ON(msg->channel >= omap_port->sst.channels);
  queue = &omap_port->txqueue[msg->channel];
 } else {
  BUG_ON(msg->channel >= omap_port->ssr.channels);
  queue = &omap_port->rxqueue[msg->channel];
 }
 msg->status = HSI_STATUS_QUEUED;

 pm_runtime_get_sync(omap_port->pdev);
 spin_lock_bh(&omap_port->lock);
 list_add_tail(&msg->link, queue);
 err = ssi_start_transfer(queue);
 if (err < 0) {
  list_del(&msg->link);
  msg->status = HSI_STATUS_ERROR;
 }
 spin_unlock_bh(&omap_port->lock);
 pm_runtime_mark_last_busy(omap_port->pdev);
 pm_runtime_put_autosuspend(omap_port->pdev);
 dev_dbg(&port->device, "msg status %d ttype %d ch %d\n",
    msg->status, msg->ttype, msg->channel);

 return err;
}
