
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ida {int dummy; } ;
struct gb_host_device {int dev; struct ida cport_id_map; } ;


 int GFP_KERNEL ;
 int dev_err (int *,char*,scalar_t__) ;
 int ida_simple_get (struct ida*,scalar_t__,scalar_t__,int ) ;

int gb_hd_cport_reserve(struct gb_host_device *hd, u16 cport_id)
{
 struct ida *id_map = &hd->cport_id_map;
 int ret;

 ret = ida_simple_get(id_map, cport_id, cport_id + 1, GFP_KERNEL);
 if (ret < 0) {
  dev_err(&hd->dev, "failed to reserve cport %u\n", cport_id);
  return ret;
 }

 return 0;
}
