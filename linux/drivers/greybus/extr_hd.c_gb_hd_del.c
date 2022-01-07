
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_host_device {int dev; int svc; } ;


 int device_del (int *) ;
 int gb_svc_del (int ) ;
 int trace_gb_hd_del (struct gb_host_device*) ;

void gb_hd_del(struct gb_host_device *hd)
{
 trace_gb_hd_del(hd);





 gb_svc_del(hd->svc);

 device_del(&hd->dev);
}
