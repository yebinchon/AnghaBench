
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int data; } ;
struct ipoib_tx_buf {int * mapping; struct sk_buff* skb; } ;
struct ib_device {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int DMA_TO_DEVICE ;
 int EIO ;
 int ib_dma_map_page (struct ib_device*,int ,int ,int ,int ) ;
 int ib_dma_map_single (struct ib_device*,int ,scalar_t__,int ) ;
 int ib_dma_mapping_error (struct ib_device*,int ) ;
 int ib_dma_unmap_page (struct ib_device*,int ,int ,int ) ;
 int ib_dma_unmap_single (struct ib_device*,int ,scalar_t__,int ) ;
 int skb_frag_off (int const*) ;
 int skb_frag_page (int const*) ;
 int skb_frag_size (int const*) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

int ipoib_dma_map_tx(struct ib_device *ca, struct ipoib_tx_buf *tx_req)
{
 struct sk_buff *skb = tx_req->skb;
 u64 *mapping = tx_req->mapping;
 int i;
 int off;

 if (skb_headlen(skb)) {
  mapping[0] = ib_dma_map_single(ca, skb->data, skb_headlen(skb),
            DMA_TO_DEVICE);
  if (unlikely(ib_dma_mapping_error(ca, mapping[0])))
   return -EIO;

  off = 1;
 } else
  off = 0;

 for (i = 0; i < skb_shinfo(skb)->nr_frags; ++i) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  mapping[i + off] = ib_dma_map_page(ca,
       skb_frag_page(frag),
       skb_frag_off(frag),
       skb_frag_size(frag),
       DMA_TO_DEVICE);
  if (unlikely(ib_dma_mapping_error(ca, mapping[i + off])))
   goto partial_error;
 }
 return 0;

partial_error:
 for (; i > 0; --i) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[i - 1];

  ib_dma_unmap_page(ca, mapping[i - !off], skb_frag_size(frag), DMA_TO_DEVICE);
 }

 if (off)
  ib_dma_unmap_single(ca, mapping[0], skb_headlen(skb), DMA_TO_DEVICE);

 return -EIO;
}
