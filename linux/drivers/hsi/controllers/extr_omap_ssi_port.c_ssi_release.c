
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* mode; } ;
struct TYPE_5__ {void* mode; } ;
struct omap_ssi_port {scalar_t__ wk_refcount; int pdev; int lock; TYPE_3__ ssr; TYPE_2__ sst; int flags; } ;
struct TYPE_4__ {int parent; } ;
struct hsi_port {int claimed; TYPE_1__ device; } ;
struct hsi_controller {int dummy; } ;
struct hsi_client {int dummy; } ;


 void* SSI_MODE_SLEEP ;
 int SSI_WAKE_EN ;
 int WARN_ON (int) ;
 struct hsi_port* hsi_get_port (struct hsi_client*) ;
 struct omap_ssi_port* hsi_port_drvdata (struct hsi_port*) ;
 int pm_runtime_get (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int pm_runtime_put_sync (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssi_cleanup_gdd (struct hsi_controller*,struct hsi_client*) ;
 int ssi_cleanup_queues (struct hsi_client*) ;
 int ssi_set_port_mode (struct omap_ssi_port*,void*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 struct hsi_controller* to_hsi_controller (int ) ;

__attribute__((used)) static int ssi_release(struct hsi_client *cl)
{
 struct hsi_port *port = hsi_get_port(cl);
 struct omap_ssi_port *omap_port = hsi_port_drvdata(port);
 struct hsi_controller *ssi = to_hsi_controller(port->device.parent);

 pm_runtime_get_sync(omap_port->pdev);
 spin_lock_bh(&omap_port->lock);

 ssi_cleanup_gdd(ssi, cl);

 ssi_cleanup_queues(cl);

 if (port->claimed <= 1) {




  if (test_and_clear_bit(SSI_WAKE_EN, &omap_port->flags))
   pm_runtime_put_sync(omap_port->pdev);
  pm_runtime_get(omap_port->pdev);

  ssi_set_port_mode(omap_port, SSI_MODE_SLEEP);
  omap_port->sst.mode = SSI_MODE_SLEEP;
  omap_port->ssr.mode = SSI_MODE_SLEEP;
  pm_runtime_put(omap_port->pdev);
  WARN_ON(omap_port->wk_refcount != 0);
 }
 spin_unlock_bh(&omap_port->lock);
 pm_runtime_put_sync(omap_port->pdev);

 return 0;
}
