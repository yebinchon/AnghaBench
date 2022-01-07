
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct usnic_fwd_dev {int name; int lock; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
typedef enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;


 int CMD_DEL_FILTER ;
 int ERR_EINVAL ;
 int enic_api_devcmd_proxy_by_index (struct net_device*,int,int,int *,int *,int) ;
 int lockdep_assert_held (int *) ;
 int usnic_dbg (char*,int ,int,int) ;
 int usnic_err (char*,int ,int,int,int) ;

__attribute__((used)) static int usnic_fwd_devcmd_locked(struct usnic_fwd_dev *ufdev, int vnic_idx,
     enum vnic_devcmd_cmd cmd, u64 *a0,
     u64 *a1)
{
 int status;
 struct net_device *netdev = ufdev->netdev;

 lockdep_assert_held(&ufdev->lock);

 status = enic_api_devcmd_proxy_by_index(netdev,
   vnic_idx,
   cmd,
   a0, a1,
   1000);
 if (status) {
  if (status == ERR_EINVAL && cmd == CMD_DEL_FILTER) {
   usnic_dbg("Dev %s vnic idx %u cmd %u already deleted",
     ufdev->name, vnic_idx, cmd);
  } else {
   usnic_err("Dev %s vnic idx %u cmd %u failed with status %d\n",
     ufdev->name, vnic_idx, cmd,
     status);
  }
 } else {
  usnic_dbg("Dev %s vnic idx %u cmd %u success",
    ufdev->name, vnic_idx, cmd);
 }

 return status;
}
