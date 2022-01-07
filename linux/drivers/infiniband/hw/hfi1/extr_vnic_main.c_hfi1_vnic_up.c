
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hfi1_vnic_vport_info {int num_rx_q; int flags; struct hfi1_vnic_rx_queue* rxq; int vesw_id; struct net_device* netdev; struct hfi1_devdata* dd; } ;
struct hfi1_vnic_rx_queue {int napi; int skbq; } ;
struct TYPE_2__ {int vesws; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int HFI1_VNIC_UP ;
 int napi_enable (int *) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int set_bit (int ,int *) ;
 int skb_queue_head_init (int *) ;
 int xa_insert (int *,int ,struct hfi1_vnic_vport_info*,int ) ;

__attribute__((used)) static int hfi1_vnic_up(struct hfi1_vnic_vport_info *vinfo)
{
 struct hfi1_devdata *dd = vinfo->dd;
 struct net_device *netdev = vinfo->netdev;
 int i, rc;


 if (!vinfo->vesw_id)
  return -EINVAL;

 rc = xa_insert(&dd->vnic.vesws, vinfo->vesw_id, vinfo, GFP_KERNEL);
 if (rc < 0)
  return rc;

 for (i = 0; i < vinfo->num_rx_q; i++) {
  struct hfi1_vnic_rx_queue *rxq = &vinfo->rxq[i];

  skb_queue_head_init(&rxq->skbq);
  napi_enable(&rxq->napi);
 }

 netif_carrier_on(netdev);
 netif_tx_start_all_queues(netdev);
 set_bit(HFI1_VNIC_UP, &vinfo->flags);

 return 0;
}
