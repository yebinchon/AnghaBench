
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_host_device {int cport_id_map; } ;
struct es2_ap_dev {int cdsi1_in_use; } ;



 struct es2_ap_dev* hd_to_es2 (struct gb_host_device*) ;
 int ida_simple_remove (int *,int) ;

__attribute__((used)) static void es2_cport_release(struct gb_host_device *hd, u16 cport_id)
{
 struct es2_ap_dev *es2 = hd_to_es2(hd);

 switch (cport_id) {
 case 128:
  es2->cdsi1_in_use = 0;
  return;
 }

 ida_simple_remove(&hd->cport_id_map, cport_id);
}
