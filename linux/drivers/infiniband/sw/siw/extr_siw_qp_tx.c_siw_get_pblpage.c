
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct siw_pbl {int dummy; } ;
struct siw_mem {scalar_t__ va; struct siw_pbl* pbl; } ;
struct page {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ siw_pbl_get_buffer (struct siw_pbl*,scalar_t__,int *,int*) ;
 struct page* virt_to_page (scalar_t__) ;

__attribute__((used)) static struct page *siw_get_pblpage(struct siw_mem *mem, u64 addr, int *idx)
{
 struct siw_pbl *pbl = mem->pbl;
 u64 offset = addr - mem->va;
 dma_addr_t paddr = siw_pbl_get_buffer(pbl, offset, ((void*)0), idx);

 if (paddr)
  return virt_to_page(paddr);

 return ((void*)0);
}
