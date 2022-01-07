
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {int wq; int device_id_map; scalar_t__ connection; } ;
struct device {int dummy; } ;


 int destroy_workqueue (int ) ;
 int gb_connection_destroy (scalar_t__) ;
 int ida_destroy (int *) ;
 int kfree (struct gb_svc*) ;
 struct gb_svc* to_gb_svc (struct device*) ;

__attribute__((used)) static void gb_svc_release(struct device *dev)
{
 struct gb_svc *svc = to_gb_svc(dev);

 if (svc->connection)
  gb_connection_destroy(svc->connection);
 ida_destroy(&svc->device_id_map);
 destroy_workqueue(svc->wq);
 kfree(svc);
}
