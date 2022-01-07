
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct ipoib_pseudo_header {int dummy; } ;
struct ipoib_dev_priv {TYPE_1__* rx_ring; int ca; int max_ib_mtu; } ;
struct TYPE_2__ {struct sk_buff* skb; int * mapping; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ IPOIB_HARD_LEN ;
 int IPOIB_UD_BUF_SIZE (int ) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ib_dma_map_single (int ,int ,int,int ) ;
 int ib_dma_mapping_error (int ,int ) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *ipoib_alloc_rx_skb(struct net_device *dev, int id)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct sk_buff *skb;
 int buf_size;
 u64 *mapping;

 buf_size = IPOIB_UD_BUF_SIZE(priv->max_ib_mtu);

 skb = dev_alloc_skb(buf_size + IPOIB_HARD_LEN);
 if (unlikely(!skb))
  return ((void*)0);





 skb_reserve(skb, sizeof(struct ipoib_pseudo_header));

 mapping = priv->rx_ring[id].mapping;
 mapping[0] = ib_dma_map_single(priv->ca, skb->data, buf_size,
           DMA_FROM_DEVICE);
 if (unlikely(ib_dma_mapping_error(priv->ca, mapping[0])))
  goto error;

 priv->rx_ring[id].skb = skb;
 return skb;
error:
 dev_kfree_skb_any(skb);
 return ((void*)0);
}
