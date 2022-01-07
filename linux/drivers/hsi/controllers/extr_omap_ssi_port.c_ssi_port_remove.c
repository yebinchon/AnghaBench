
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct omap_ssi_port {size_t port_id; int errqueue_work; } ;
struct omap_ssi_controller {int ** port; } ;
struct TYPE_2__ {int parent; } ;
struct hsi_port {void* release; void* stop_tx; void* start_tx; void* flush; void* setup; int async; TYPE_1__ device; } ;
struct hsi_controller {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct omap_ssi_controller* hsi_controller_drvdata (struct hsi_controller*) ;
 void* hsi_dummy_cl ;
 int hsi_dummy_msg ;
 struct omap_ssi_port* hsi_port_drvdata (struct hsi_port*) ;
 int hsi_port_unregister_clients (struct hsi_port*) ;
 struct hsi_port* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_dont_use_autosuspend (int *) ;
 int ssi_debug_remove_port (struct hsi_port*) ;
 struct hsi_controller* to_hsi_controller (int ) ;

__attribute__((used)) static int ssi_port_remove(struct platform_device *pd)
{
 struct hsi_port *port = platform_get_drvdata(pd);
 struct omap_ssi_port *omap_port = hsi_port_drvdata(port);
 struct hsi_controller *ssi = to_hsi_controller(port->device.parent);
 struct omap_ssi_controller *omap_ssi = hsi_controller_drvdata(ssi);





 cancel_delayed_work_sync(&omap_port->errqueue_work);

 hsi_port_unregister_clients(port);

 port->async = hsi_dummy_msg;
 port->setup = hsi_dummy_cl;
 port->flush = hsi_dummy_cl;
 port->start_tx = hsi_dummy_cl;
 port->stop_tx = hsi_dummy_cl;
 port->release = hsi_dummy_cl;

 omap_ssi->port[omap_port->port_id] = ((void*)0);
 platform_set_drvdata(pd, ((void*)0));

 pm_runtime_dont_use_autosuspend(&pd->dev);
 pm_runtime_disable(&pd->dev);

 return 0;
}
