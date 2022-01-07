
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_host_device {int cport_id_map; int bus_id; scalar_t__ svc; } ;
struct device {int dummy; } ;


 int gb_hd_bus_id_map ;
 int gb_svc_put (scalar_t__) ;
 int ida_destroy (int *) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct gb_host_device*) ;
 struct gb_host_device* to_gb_host_device (struct device*) ;
 int trace_gb_hd_release (struct gb_host_device*) ;

__attribute__((used)) static void gb_hd_release(struct device *dev)
{
 struct gb_host_device *hd = to_gb_host_device(dev);

 trace_gb_hd_release(hd);

 if (hd->svc)
  gb_svc_put(hd->svc);
 ida_simple_remove(&gb_hd_bus_id_map, hd->bus_id);
 ida_destroy(&hd->cport_id_map);
 kfree(hd);
}
