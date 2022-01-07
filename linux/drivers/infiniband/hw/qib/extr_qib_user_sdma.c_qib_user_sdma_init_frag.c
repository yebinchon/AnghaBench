
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct qib_user_sdma_pkt {TYPE_1__* addr; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {void* dma_length; int addr; void* kvaddr; struct page* page; void* dma_mapped; void* put_page; void* last_desc; void* first_desc; void* length; void* offset; } ;



__attribute__((used)) static void qib_user_sdma_init_frag(struct qib_user_sdma_pkt *pkt,
        int i, u16 offset, u16 len,
        u16 first_desc, u16 last_desc,
        u16 put_page, u16 dma_mapped,
        struct page *page, void *kvaddr,
        dma_addr_t dma_addr, u16 dma_length)
{
 pkt->addr[i].offset = offset;
 pkt->addr[i].length = len;
 pkt->addr[i].first_desc = first_desc;
 pkt->addr[i].last_desc = last_desc;
 pkt->addr[i].put_page = put_page;
 pkt->addr[i].dma_mapped = dma_mapped;
 pkt->addr[i].page = page;
 pkt->addr[i].kvaddr = kvaddr;
 pkt->addr[i].addr = dma_addr;
 pkt->addr[i].dma_length = dma_length;
}
