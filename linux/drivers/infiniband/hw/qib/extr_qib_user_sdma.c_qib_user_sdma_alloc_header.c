
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_user_sdma_queue {int header_cache; } ;
typedef scalar_t__ dma_addr_t ;


 int GFP_KERNEL ;
 size_t QIB_USER_SDMA_EXP_HEADER_LENGTH ;
 void* dma_pool_alloc (int ,int ,scalar_t__*) ;
 void* kmalloc (size_t,int ) ;

__attribute__((used)) static void *qib_user_sdma_alloc_header(struct qib_user_sdma_queue *pq,
    size_t len, dma_addr_t *dma_addr)
{
 void *hdr;

 if (len == QIB_USER_SDMA_EXP_HEADER_LENGTH)
  hdr = dma_pool_alloc(pq->header_cache, GFP_KERNEL,
          dma_addr);
 else
  hdr = ((void*)0);

 if (!hdr) {
  hdr = kmalloc(len, GFP_KERNEL);
  if (!hdr)
   return ((void*)0);

  *dma_addr = 0;
 }

 return hdr;
}
