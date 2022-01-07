
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_ssi_port {int work; int wk_lock; int wk_refcount; } ;
struct hsi_port {int device; } ;
struct hsi_client {int dummy; } ;


 int dev_dbg (int *,char*,int ) ;
 struct hsi_port* hsi_get_port (struct hsi_client*) ;
 struct omap_ssi_port* hsi_port_drvdata (struct hsi_port*) ;
 int schedule_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ssi_start_tx(struct hsi_client *cl)
{
 struct hsi_port *port = hsi_get_port(cl);
 struct omap_ssi_port *omap_port = hsi_port_drvdata(port);

 dev_dbg(&port->device, "Wake out high %d\n", omap_port->wk_refcount);

 spin_lock_bh(&omap_port->wk_lock);
 if (omap_port->wk_refcount++) {
  spin_unlock_bh(&omap_port->wk_lock);
  return 0;
 }
 spin_unlock_bh(&omap_port->wk_lock);

 schedule_work(&omap_port->work);

 return 0;
}
