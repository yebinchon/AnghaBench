
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_ssi_port {int pdev; int wk_lock; scalar_t__ wk_refcount; } ;
struct omap_ssi_controller {scalar_t__ sys; } ;
struct TYPE_2__ {int parent; } ;
struct hsi_port {int num; TYPE_1__ device; } ;
struct hsi_controller {int dummy; } ;
struct hsi_client {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ SSI_CLEAR_WAKE_REG (int ) ;
 int SSI_WAKE (int ) ;
 int dev_dbg (TYPE_1__*,char*,scalar_t__) ;
 struct omap_ssi_controller* hsi_controller_drvdata (struct hsi_controller*) ;
 struct hsi_port* hsi_get_port (struct hsi_client*) ;
 struct omap_ssi_port* hsi_port_drvdata (struct hsi_port*) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct hsi_controller* to_hsi_controller (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ssi_stop_tx(struct hsi_client *cl)
{
 struct hsi_port *port = hsi_get_port(cl);
 struct omap_ssi_port *omap_port = hsi_port_drvdata(port);
 struct hsi_controller *ssi = to_hsi_controller(port->device.parent);
 struct omap_ssi_controller *omap_ssi = hsi_controller_drvdata(ssi);

 dev_dbg(&port->device, "Wake out low %d\n", omap_port->wk_refcount);

 spin_lock_bh(&omap_port->wk_lock);
 BUG_ON(!omap_port->wk_refcount);
 if (--omap_port->wk_refcount) {
  spin_unlock_bh(&omap_port->wk_lock);
  return 0;
 }
 writel(SSI_WAKE(0), omap_ssi->sys + SSI_CLEAR_WAKE_REG(port->num));
 spin_unlock_bh(&omap_port->wk_lock);

 pm_runtime_mark_last_busy(omap_port->pdev);
 pm_runtime_put_autosuspend(omap_port->pdev);


 return 0;
}
