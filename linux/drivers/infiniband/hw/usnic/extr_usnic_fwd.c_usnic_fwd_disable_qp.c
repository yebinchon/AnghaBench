
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct usnic_fwd_dev {struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int CMD_QP_DISABLE ;
 int CMD_QP_RQWQ ;
 int netdev_name (struct net_device*) ;
 int usnic_dbg (char*,int ,int,int) ;
 int usnic_err (char*,int ,int,int,int) ;
 int usnic_fwd_devcmd (struct usnic_fwd_dev*,int,int ,int*,int*) ;

int usnic_fwd_disable_qp(struct usnic_fwd_dev *ufdev, int vnic_idx, int qp_idx)
{
 int status;
 u64 a0, a1;
 struct net_device *pf_netdev;

 pf_netdev = ufdev->netdev;
 a0 = qp_idx;
 a1 = CMD_QP_RQWQ;

 status = usnic_fwd_devcmd(ufdev, vnic_idx, CMD_QP_DISABLE,
   &a0, &a1);
 if (status) {
  usnic_err("PF %s VNIC Index %u RQ Index: %u DISABLE Failed with status %d",
    netdev_name(pf_netdev),
    vnic_idx,
    qp_idx,
    status);
 } else {
  usnic_dbg("PF %s VNIC Index %u RQ Index: %u DISABLED",
    netdev_name(pf_netdev),
    vnic_idx,
    qp_idx);
 }

 return status;
}
