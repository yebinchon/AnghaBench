
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct siw_umem {unsigned int fp_addr; unsigned int num_pages; TYPE_1__* page_chunk; } ;
struct page {int dummy; } ;
struct TYPE_2__ {struct page** plist; } ;


 unsigned int CHUNK_MASK ;
 unsigned int CHUNK_SHIFT ;
 unsigned int PAGE_SHIFT ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline struct page *siw_get_upage(struct siw_umem *umem, u64 addr)
{
 unsigned int page_idx = (addr - umem->fp_addr) >> PAGE_SHIFT,
       chunk_idx = page_idx >> CHUNK_SHIFT,
       page_in_chunk = page_idx & ~CHUNK_MASK;

 if (likely(page_idx < umem->num_pages))
  return umem->page_chunk[chunk_idx].plist[page_in_chunk];

 return ((void*)0);
}
