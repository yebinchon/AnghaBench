
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_user_sdma_queue {int header_cache; } ;
struct qib_user_sdma_pkt {TYPE_1__* addr; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ kvaddr; scalar_t__ addr; int dma_length; scalar_t__ dma_mapped; scalar_t__ page; scalar_t__ put_page; } ;


 int DMA_TO_DEVICE ;
 int __free_page (scalar_t__) ;
 int dma_pool_free (int ,scalar_t__,scalar_t__) ;
 int dma_unmap_page (struct device*,scalar_t__,int ,int ) ;
 int dma_unmap_single (struct device*,scalar_t__,int ,int ) ;
 int kfree (scalar_t__) ;
 int kunmap (scalar_t__) ;
 int put_user_page (scalar_t__) ;

__attribute__((used)) static void qib_user_sdma_free_pkt_frag(struct device *dev,
     struct qib_user_sdma_queue *pq,
     struct qib_user_sdma_pkt *pkt,
     int frag)
{
 const int i = frag;

 if (pkt->addr[i].page) {

  if (pkt->addr[i].dma_mapped)
   dma_unmap_page(dev,
           pkt->addr[i].addr,
           pkt->addr[i].dma_length,
           DMA_TO_DEVICE);

  if (pkt->addr[i].kvaddr)
   kunmap(pkt->addr[i].page);

  if (pkt->addr[i].put_page)
   put_user_page(pkt->addr[i].page);
  else
   __free_page(pkt->addr[i].page);
 } else if (pkt->addr[i].kvaddr) {

  if (pkt->addr[i].dma_mapped) {

   dma_unmap_single(dev,
           pkt->addr[i].addr,
           pkt->addr[i].dma_length,
           DMA_TO_DEVICE);
   kfree(pkt->addr[i].kvaddr);
  } else if (pkt->addr[i].addr) {

   dma_pool_free(pq->header_cache,
         pkt->addr[i].kvaddr, pkt->addr[i].addr);
  } else {

   kfree(pkt->addr[i].kvaddr);
  }
 }
}
