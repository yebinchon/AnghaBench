
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {struct page** pages; } ;
struct page {int dummy; } ;
typedef int pgprot_t ;


 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int memcpy_fromio (void*,void*,int ) ;
 void* ttm_kmap_atomic_prot (struct page*,int ) ;
 int ttm_kunmap_atomic_prot (void*,int ) ;

__attribute__((used)) static int ttm_copy_io_ttm_page(struct ttm_tt *ttm, void *src,
    unsigned long page,
    pgprot_t prot)
{
 struct page *d = ttm->pages[page];
 void *dst;

 if (!d)
  return -ENOMEM;

 src = (void *)((unsigned long)src + (page << PAGE_SHIFT));
 dst = ttm_kmap_atomic_prot(d, prot);
 if (!dst)
  return -ENOMEM;

 memcpy_fromio(dst, src, PAGE_SIZE);

 ttm_kunmap_atomic_prot(dst, prot);

 return 0;
}
