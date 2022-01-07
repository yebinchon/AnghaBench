
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int queue_mapping; } ;
struct opa_vnic_adapter {TYPE_1__* rn_ops; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int (* ndo_start_xmit ) (struct sk_buff*,struct net_device*) ;} ;


 scalar_t__ ETH_ZLEN ;
 int NETDEV_TX_OK ;
 int opa_vnic_encap_skb (struct opa_vnic_adapter*,struct sk_buff*) ;
 struct opa_vnic_adapter* opa_vnic_priv (struct net_device*) ;
 scalar_t__ skb_padto (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int stub1 (struct sk_buff*,struct net_device*) ;
 scalar_t__ unlikely (int) ;
 int v_dbg (char*,int ,scalar_t__) ;

__attribute__((used)) static netdev_tx_t opa_netdev_start_xmit(struct sk_buff *skb,
      struct net_device *netdev)
{
 struct opa_vnic_adapter *adapter = opa_vnic_priv(netdev);

 v_dbg("xmit: queue %d skb len %d\n", skb->queue_mapping, skb->len);

 if (unlikely(skb->len < ETH_ZLEN)) {
  if (skb_padto(skb, ETH_ZLEN))
   return NETDEV_TX_OK;

  skb_put(skb, ETH_ZLEN - skb->len);
 }

 opa_vnic_encap_skb(adapter, skb);
 return adapter->rn_ops->ndo_start_xmit(skb, netdev);
}
