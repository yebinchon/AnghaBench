
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
 int memcpy_toio (void*,void*,int ) ;
 void* ttm_kmap_atomic_prot (struct page*,int ) ;
 int ttm_kunmap_atomic_prot (void*,int ) ;

__attribute__((used)) static int ttm_copy_ttm_io_page(struct ttm_tt *ttm, void *dst,
    unsigned long page,
    pgprot_t prot)
{
 struct page *s = ttm->pages[page];
 void *src;

 if (!s)
  return -ENOMEM;

 dst = (void *)((unsigned long)dst + (page << PAGE_SHIFT));
 src = ttm_kmap_atomic_prot(s, prot);
 if (!src)
  return -ENOMEM;

 memcpy_toio(dst, src, PAGE_SIZE);

 ttm_kunmap_atomic_prot(src, prot);

 return 0;
}
