
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pagevec {int dummy; } ;
struct page {int dummy; } ;
struct drm_gem_object {int size; TYPE_1__* filp; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {struct address_space* f_mapping; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 struct page** ERR_CAST (struct page*) ;
 struct page** ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int WARN_ON (int) ;
 int __GFP_DMA32 ;
 int drm_gem_check_release_pagevec (struct pagevec*) ;
 int kvfree (struct page**) ;
 struct page** kvmalloc_array (int,int,int ) ;
 int mapping_clear_unevictable (struct address_space*) ;
 scalar_t__ mapping_gfp_constraint (struct address_space*,int ) ;
 int mapping_set_unevictable (struct address_space*) ;
 int page_to_pfn (struct page*) ;
 int pagevec_add (struct pagevec*,struct page*) ;
 scalar_t__ pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*) ;
 struct page* shmem_read_mapping_page (struct address_space*,int) ;

struct page **drm_gem_get_pages(struct drm_gem_object *obj)
{
 struct address_space *mapping;
 struct page *p, **pages;
 struct pagevec pvec;
 int i, npages;


 mapping = obj->filp->f_mapping;





 WARN_ON((obj->size & (PAGE_SIZE - 1)) != 0);

 npages = obj->size >> PAGE_SHIFT;

 pages = kvmalloc_array(npages, sizeof(struct page *), GFP_KERNEL);
 if (pages == ((void*)0))
  return ERR_PTR(-ENOMEM);

 mapping_set_unevictable(mapping);

 for (i = 0; i < npages; i++) {
  p = shmem_read_mapping_page(mapping, i);
  if (IS_ERR(p))
   goto fail;
  pages[i] = p;






  BUG_ON(mapping_gfp_constraint(mapping, __GFP_DMA32) &&
    (page_to_pfn(p) >= 0x00100000UL));
 }

 return pages;

fail:
 mapping_clear_unevictable(mapping);
 pagevec_init(&pvec);
 while (i--) {
  if (!pagevec_add(&pvec, pages[i]))
   drm_gem_check_release_pagevec(&pvec);
 }
 if (pagevec_count(&pvec))
  drm_gem_check_release_pagevec(&pvec);

 kvfree(pages);
 return ERR_CAST(p);
}
