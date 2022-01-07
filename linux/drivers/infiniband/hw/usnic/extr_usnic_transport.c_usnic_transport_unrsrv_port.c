
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum usnic_transport_type { ____Placeholder_usnic_transport_type } usnic_transport_type ;


 int USNIC_TRANSPORT_ROCE_CUSTOM ;
 int bitmap_clear (int ,int ,int) ;
 int roce_bitmap ;
 int roce_bitmap_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int ) ;
 int usnic_dbg (char*,int ,int) ;
 int usnic_err (char*,int,...) ;
 int usnic_transport_to_str (int) ;

void usnic_transport_unrsrv_port(enum usnic_transport_type type, u16 port_num)
{
 if (type == USNIC_TRANSPORT_ROCE_CUSTOM) {
  spin_lock(&roce_bitmap_lock);
  if (!port_num) {
   usnic_err("Unreserved invalid port num 0 for %s\n",
     usnic_transport_to_str(type));
   goto out_roce_custom;
  }

  if (!test_bit(port_num, roce_bitmap)) {
   usnic_err("Unreserving invalid %hu for %s\n",
     port_num,
     usnic_transport_to_str(type));
   goto out_roce_custom;
  }
  bitmap_clear(roce_bitmap, port_num, 1);
  usnic_dbg("Freeing port %hu for %s\n", port_num,
    usnic_transport_to_str(type));
out_roce_custom:
  spin_unlock(&roce_bitmap_lock);
 } else {
  usnic_err("Freeing invalid port %hu for %d\n", port_num, type);
 }
}
