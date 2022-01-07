
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_host_device {int svc; } ;


 int gb_svc_del (int ) ;

void gb_hd_shutdown(struct gb_host_device *hd)
{
 gb_svc_del(hd->svc);
}
