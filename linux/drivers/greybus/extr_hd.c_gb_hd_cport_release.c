
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct gb_host_device {int cport_id_map; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* cport_release ) (struct gb_host_device*,int ) ;} ;


 int ida_simple_remove (int *,int ) ;
 int stub1 (struct gb_host_device*,int ) ;

void gb_hd_cport_release(struct gb_host_device *hd, u16 cport_id)
{
 if (hd->driver->cport_release) {
  hd->driver->cport_release(hd, cport_id);
  return;
 }

 ida_simple_remove(&hd->cport_id_map, cport_id);
}
