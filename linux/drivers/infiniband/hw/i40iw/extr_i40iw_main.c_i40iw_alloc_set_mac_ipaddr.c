
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i40iw_device {scalar_t__ mac_ip_table_idx; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int i40iw_add_mac_ipaddr_entry (struct i40iw_device*,int *,int ) ;
 int i40iw_alloc_local_mac_ipaddr_entry (struct i40iw_device*,scalar_t__*) ;
 int i40iw_del_macip_entry (struct i40iw_device*,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_alloc_set_mac_ipaddr(struct i40iw_device *iwdev,
        u8 *macaddr)
{
 enum i40iw_status_code status;

 status = i40iw_alloc_local_mac_ipaddr_entry(iwdev, &iwdev->mac_ip_table_idx);
 if (!status) {
  status = i40iw_add_mac_ipaddr_entry(iwdev, macaddr,
          (u8)iwdev->mac_ip_table_idx);
  if (status)
   i40iw_del_macip_entry(iwdev, (u8)iwdev->mac_ip_table_idx);
 }
 return status;
}
