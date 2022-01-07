
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {int connection; int wq; int dev; } ;


 int device_del (int *) ;
 scalar_t__ device_is_registered (int *) ;
 int flush_workqueue (int ) ;
 int gb_connection_disable (int ) ;
 int gb_connection_disable_rx (int ) ;
 int gb_svc_debugfs_exit (struct gb_svc*) ;
 int gb_svc_remove_modules (struct gb_svc*) ;
 int gb_svc_watchdog_destroy (struct gb_svc*) ;

void gb_svc_del(struct gb_svc *svc)
{
 gb_connection_disable_rx(svc->connection);




 if (device_is_registered(&svc->dev)) {
  gb_svc_debugfs_exit(svc);
  gb_svc_watchdog_destroy(svc);
  device_del(&svc->dev);
 }

 flush_workqueue(svc->wq);

 gb_svc_remove_modules(svc);

 gb_connection_disable(svc->connection);
}
