
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum usnic_transport_type { ____Placeholder_usnic_transport_type } usnic_transport_type ;


 int ROCE_BITMAP_SZ ;
 int USNIC_TRANSPORT_ROCE_CUSTOM ;
 int bitmap_find_next_zero_area (int ,int ,int,int,int ) ;
 int bitmap_set (int ,int,int) ;
 int roce_bitmap ;
 int roce_bitmap_lock ;
 int roce_next_port ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int,int ) ;
 int usnic_dbg (char*,int,int ) ;
 int usnic_err (char*,int ) ;
 int usnic_transport_to_str (int) ;

u16 usnic_transport_rsrv_port(enum usnic_transport_type type, u16 port_num)
{
 if (type == USNIC_TRANSPORT_ROCE_CUSTOM) {
  spin_lock(&roce_bitmap_lock);
  if (!port_num) {
   port_num = bitmap_find_next_zero_area(roce_bitmap,
      ROCE_BITMAP_SZ,
      roce_next_port ,
      1 ,
      0 );
   roce_next_port = (port_num & 4095) + 1;
  } else if (test_bit(port_num, roce_bitmap)) {
   usnic_err("Failed to allocate port for %s\n",
     usnic_transport_to_str(type));
   spin_unlock(&roce_bitmap_lock);
   goto out_fail;
  }
  bitmap_set(roce_bitmap, port_num, 1);
  spin_unlock(&roce_bitmap_lock);
 } else {
  usnic_err("Failed to allocate port - transport %s unsupported\n",
    usnic_transport_to_str(type));
  goto out_fail;
 }

 usnic_dbg("Allocating port %hu for %s\n", port_num,
   usnic_transport_to_str(type));
 return port_num;

out_fail:
 return 0;
}
