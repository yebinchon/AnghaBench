
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct hfi1_vnic_vport_info {TYPE_1__* stats; TYPE_2__* netdev; } ;
struct hfi1_vnic_rx_queue {size_t idx; struct hfi1_vnic_vport_info* vinfo; } ;
struct TYPE_4__ {int mtu; } ;
struct TYPE_3__ {int rx_runt; int rx_oversize; } ;


 int EFAULT ;
 int ETH_ZLEN ;
 int OPA_VNIC_HDR_LEN ;
 int VLAN_ETH_HLEN ;
 int skb_pull (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int hfi1_vnic_decap_skb(struct hfi1_vnic_rx_queue *rxq,
          struct sk_buff *skb)
{
 struct hfi1_vnic_vport_info *vinfo = rxq->vinfo;
 int max_len = vinfo->netdev->mtu + VLAN_ETH_HLEN;
 int rc = -EFAULT;

 skb_pull(skb, OPA_VNIC_HDR_LEN);


 if (unlikely(skb->len > max_len))
  vinfo->stats[rxq->idx].rx_oversize++;
 else if (unlikely(skb->len < ETH_ZLEN))
  vinfo->stats[rxq->idx].rx_runt++;
 else
  rc = 0;
 return rc;
}
