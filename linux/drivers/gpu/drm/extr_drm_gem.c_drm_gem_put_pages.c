
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pagevec {int dummy; } ;
struct page {int dummy; } ;
struct drm_gem_object {int size; int filp; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {struct address_space* i_mapping; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int WARN_ON (int) ;
 int drm_gem_check_release_pagevec (struct pagevec*) ;
 TYPE_1__* file_inode (int ) ;
 int kvfree (struct page**) ;
 int mapping_clear_unevictable (struct address_space*) ;
 int mark_page_accessed (struct page*) ;
 int pagevec_add (struct pagevec*,struct page*) ;
 scalar_t__ pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*) ;
 int set_page_dirty (struct page*) ;

void drm_gem_put_pages(struct drm_gem_object *obj, struct page **pages,
  bool dirty, bool accessed)
{
 int i, npages;
 struct address_space *mapping;
 struct pagevec pvec;

 mapping = file_inode(obj->filp)->i_mapping;
 mapping_clear_unevictable(mapping);





 WARN_ON((obj->size & (PAGE_SIZE - 1)) != 0);

 npages = obj->size >> PAGE_SHIFT;

 pagevec_init(&pvec);
 for (i = 0; i < npages; i++) {
  if (!pages[i])
   continue;

  if (dirty)
   set_page_dirty(pages[i]);

  if (accessed)
   mark_page_accessed(pages[i]);


  if (!pagevec_add(&pvec, pages[i]))
   drm_gem_check_release_pagevec(&pvec);
 }
 if (pagevec_count(&pvec))
  drm_gem_check_release_pagevec(&pvec);

 kvfree(pages);
}
