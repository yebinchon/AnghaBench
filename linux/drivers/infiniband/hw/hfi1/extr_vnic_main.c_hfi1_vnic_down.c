
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct hfi1_vnic_vport_info {size_t num_rx_q; struct hfi1_vnic_rx_queue* rxq; int vesw_id; int netdev; int flags; struct hfi1_devdata* dd; } ;
struct hfi1_vnic_rx_queue {int skbq; int napi; } ;
struct TYPE_2__ {int vesws; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;


 int HFI1_VNIC_UP ;
 int clear_bit (int ,int *) ;
 int msix_vnic_synchronize_irq (struct hfi1_devdata*) ;
 int napi_disable (int *) ;
 int netif_carrier_off (int ) ;
 int netif_tx_disable (int ) ;
 int skb_queue_purge (int *) ;
 int xa_erase (int *,int ) ;

__attribute__((used)) static void hfi1_vnic_down(struct hfi1_vnic_vport_info *vinfo)
{
 struct hfi1_devdata *dd = vinfo->dd;
 u8 i;

 clear_bit(HFI1_VNIC_UP, &vinfo->flags);
 netif_carrier_off(vinfo->netdev);
 netif_tx_disable(vinfo->netdev);
 xa_erase(&dd->vnic.vesws, vinfo->vesw_id);


 msix_vnic_synchronize_irq(dd);


 for (i = 0; i < vinfo->num_rx_q; i++) {
  struct hfi1_vnic_rx_queue *rxq = &vinfo->rxq[i];

  napi_disable(&rxq->napi);
  skb_queue_purge(&rxq->skbq);
 }
}
