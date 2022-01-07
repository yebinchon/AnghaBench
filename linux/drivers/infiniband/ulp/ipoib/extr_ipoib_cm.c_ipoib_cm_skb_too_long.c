
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int skb_task; int skb_queue; } ;
struct ipoib_dev_priv {TYPE_1__ cm; int wq; } ;


 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int queue_work (int ,int *) ;
 int skb_dst_update_pmtu (struct sk_buff*,unsigned int) ;
 int skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void ipoib_cm_skb_too_long(struct net_device *dev, struct sk_buff *skb,
      unsigned int mtu)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 int e = skb_queue_empty(&priv->cm.skb_queue);

 skb_dst_update_pmtu(skb, mtu);

 skb_queue_tail(&priv->cm.skb_queue, skb);
 if (e)
  queue_work(priv->wq, &priv->cm.skb_task);
}
