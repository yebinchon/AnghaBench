
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rdma_netdev {int set_id; int free_rdma_netdev; } ;
struct opa_vnic_rdma_netdev {int dummy; } ;
struct net_device {int features; int hw_features; int vlan_features; int * netdev_ops; int watchdog_timeo; } ;
struct ib_device {int dummy; } ;
struct hfi1_vnic_vport_info {int num_rx_q; int lock; struct hfi1_vnic_rx_queue* rxq; struct net_device* netdev; int num_tx_q; struct hfi1_devdata* dd; } ;
struct hfi1_vnic_rx_queue {int idx; int napi; struct net_device* netdev; struct hfi1_vnic_vport_info* vinfo; } ;
struct hfi1_devdata {int num_vnic_contexts; scalar_t__ num_pports; int num_sdma; } ;
typedef enum rdma_netdev_t { ____Placeholder_rdma_netdev_t } rdma_netdev_t ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct net_device* ERR_PTR (int) ;
 int HFI_TX_TIMEOUT_MS ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_SG ;
 int RDMA_NETDEV_OPA_VNIC ;
 struct net_device* alloc_netdev_mqs (int,char const*,unsigned char,void (*) (struct net_device*),int ,int) ;
 struct hfi1_devdata* dd_from_ibdev (struct ib_device*) ;
 int free_netdev (struct net_device*) ;
 int hfi1_netdev_ops ;
 int hfi1_vnic_free_rn ;
 int hfi1_vnic_init (struct hfi1_vnic_vport_info*) ;
 int hfi1_vnic_napi ;
 int hfi1_vnic_set_vesw_id ;
 int msecs_to_jiffies (int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 struct rdma_netdev* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 struct hfi1_vnic_vport_info* opa_vnic_dev_priv (struct net_device*) ;

struct net_device *hfi1_vnic_alloc_rn(struct ib_device *device,
          u8 port_num,
          enum rdma_netdev_t type,
          const char *name,
          unsigned char name_assign_type,
          void (*setup)(struct net_device *))
{
 struct hfi1_devdata *dd = dd_from_ibdev(device);
 struct hfi1_vnic_vport_info *vinfo;
 struct net_device *netdev;
 struct rdma_netdev *rn;
 int i, size, rc;

 if (!dd->num_vnic_contexts)
  return ERR_PTR(-ENOMEM);

 if (!port_num || (port_num > dd->num_pports))
  return ERR_PTR(-EINVAL);

 if (type != RDMA_NETDEV_OPA_VNIC)
  return ERR_PTR(-EOPNOTSUPP);

 size = sizeof(struct opa_vnic_rdma_netdev) + sizeof(*vinfo);
 netdev = alloc_netdev_mqs(size, name, name_assign_type, setup,
      dd->num_sdma, dd->num_vnic_contexts);
 if (!netdev)
  return ERR_PTR(-ENOMEM);

 rn = netdev_priv(netdev);
 vinfo = opa_vnic_dev_priv(netdev);
 vinfo->dd = dd;
 vinfo->num_tx_q = dd->num_sdma;
 vinfo->num_rx_q = dd->num_vnic_contexts;
 vinfo->netdev = netdev;
 rn->free_rdma_netdev = hfi1_vnic_free_rn;
 rn->set_id = hfi1_vnic_set_vesw_id;

 netdev->features = NETIF_F_HIGHDMA | NETIF_F_SG;
 netdev->hw_features = netdev->features;
 netdev->vlan_features = netdev->features;
 netdev->watchdog_timeo = msecs_to_jiffies(HFI_TX_TIMEOUT_MS);
 netdev->netdev_ops = &hfi1_netdev_ops;
 mutex_init(&vinfo->lock);

 for (i = 0; i < vinfo->num_rx_q; i++) {
  struct hfi1_vnic_rx_queue *rxq = &vinfo->rxq[i];

  rxq->idx = i;
  rxq->vinfo = vinfo;
  rxq->netdev = netdev;
  netif_napi_add(netdev, &rxq->napi, hfi1_vnic_napi, 64);
 }

 rc = hfi1_vnic_init(vinfo);
 if (rc)
  goto init_fail;

 return netdev;
init_fail:
 mutex_destroy(&vinfo->lock);
 free_netdev(netdev);
 return ERR_PTR(rc);
}
