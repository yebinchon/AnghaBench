
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_host_device {int dev; int svc; } ;


 int device_add (int *) ;
 int device_del (int *) ;
 int gb_svc_add (int ) ;
 int trace_gb_hd_add (struct gb_host_device*) ;

int gb_hd_add(struct gb_host_device *hd)
{
 int ret;

 ret = device_add(&hd->dev);
 if (ret)
  return ret;

 ret = gb_svc_add(hd->svc);
 if (ret) {
  device_del(&hd->dev);
  return ret;
 }

 trace_gb_hd_add(hd);

 return 0;
}
