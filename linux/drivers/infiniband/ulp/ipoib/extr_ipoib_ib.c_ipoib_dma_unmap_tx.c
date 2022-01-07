
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct ipoib_tx_buf {int * mapping; struct sk_buff* skb; } ;
struct ipoib_dev_priv {int ca; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_unmap_page (int ,int ,int ,int ) ;
 int ib_dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int skb_frag_size (int const*) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

void ipoib_dma_unmap_tx(struct ipoib_dev_priv *priv,
   struct ipoib_tx_buf *tx_req)
{
 struct sk_buff *skb = tx_req->skb;
 u64 *mapping = tx_req->mapping;
 int i;
 int off;

 if (skb_headlen(skb)) {
  ib_dma_unmap_single(priv->ca, mapping[0], skb_headlen(skb),
        DMA_TO_DEVICE);
  off = 1;
 } else
  off = 0;

 for (i = 0; i < skb_shinfo(skb)->nr_frags; ++i) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

  ib_dma_unmap_page(priv->ca, mapping[i + off],
      skb_frag_size(frag), DMA_TO_DEVICE);
 }
}
