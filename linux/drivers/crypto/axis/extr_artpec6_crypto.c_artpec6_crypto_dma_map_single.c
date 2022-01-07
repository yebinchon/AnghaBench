
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct artpec6_crypto_req_common {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 uintptr_t PAGE_MASK ;
 int artpec6_crypto_dma_map_page (struct artpec6_crypto_req_common*,struct page*,size_t,size_t,int,int *) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static int
artpec6_crypto_dma_map_single(struct artpec6_crypto_req_common *common,
         void *ptr, size_t size,
         enum dma_data_direction dir,
         dma_addr_t *dma_addr_out)
{
 struct page *page = virt_to_page(ptr);
 size_t offset = (uintptr_t)ptr & ~PAGE_MASK;

 return artpec6_crypto_dma_map_page(common, page, offset, size, dir,
       dma_addr_out);
}
