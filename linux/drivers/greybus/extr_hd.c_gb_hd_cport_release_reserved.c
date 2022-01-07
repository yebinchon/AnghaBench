
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ida {int dummy; } ;
struct gb_host_device {struct ida cport_id_map; } ;


 int ida_simple_remove (struct ida*,int ) ;

void gb_hd_cport_release_reserved(struct gb_host_device *hd, u16 cport_id)
{
 struct ida *id_map = &hd->cport_id_map;

 ida_simple_remove(id_map, cport_id);
}
