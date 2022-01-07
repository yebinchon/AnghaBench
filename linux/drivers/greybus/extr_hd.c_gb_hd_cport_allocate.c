
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ida {int dummy; } ;
struct gb_host_device {int num_cports; int dev; TYPE_1__* driver; struct ida cport_id_map; } ;
struct TYPE_2__ {int (* cport_allocate ) (struct gb_host_device*,int,unsigned long) ;} ;


 int EINVAL ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int) ;
 int ida_simple_get (struct ida*,int,int,int ) ;
 int stub1 (struct gb_host_device*,int,unsigned long) ;

int gb_hd_cport_allocate(struct gb_host_device *hd, int cport_id,
    unsigned long flags)
{
 struct ida *id_map = &hd->cport_id_map;
 int ida_start, ida_end;

 if (hd->driver->cport_allocate)
  return hd->driver->cport_allocate(hd, cport_id, flags);

 if (cport_id < 0) {
  ida_start = 0;
  ida_end = hd->num_cports;
 } else if (cport_id < hd->num_cports) {
  ida_start = cport_id;
  ida_end = cport_id + 1;
 } else {
  dev_err(&hd->dev, "cport %d not available\n", cport_id);
  return -EINVAL;
 }

 return ida_simple_get(id_map, ida_start, ida_end, GFP_KERNEL);
}
