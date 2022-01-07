
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {scalar_t__ index; } ;
struct bitmap_storage {unsigned long file_pages; } ;
struct TYPE_2__ {unsigned long chunkshift; } ;
struct bitmap {unsigned long cluster_slot; scalar_t__ allclean; int flags; struct bitmap_storage storage; int mddev; TYPE_1__ counts; } ;
typedef unsigned long sector_t ;


 int BITMAP_HOSTENDIAN ;
 int BITMAP_PAGE_NEEDWRITE ;
 int BITMAP_PAGE_PENDING ;
 int clear_bit (unsigned long,void*) ;
 int clear_bit_le (unsigned long,void*) ;
 unsigned long file_page_offset (struct bitmap_storage*,unsigned long) ;
 struct page* filemap_get_page (struct bitmap_storage*,unsigned long) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 scalar_t__ mddev_is_clustered (int ) ;
 int set_page_attr (struct bitmap*,scalar_t__,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int test_page_attr (struct bitmap*,scalar_t__,int ) ;

__attribute__((used)) static void md_bitmap_file_clear_bit(struct bitmap *bitmap, sector_t block)
{
 unsigned long bit;
 struct page *page;
 void *paddr;
 unsigned long chunk = block >> bitmap->counts.chunkshift;
 struct bitmap_storage *store = &bitmap->storage;
 unsigned long node_offset = 0;

 if (mddev_is_clustered(bitmap->mddev))
  node_offset = bitmap->cluster_slot * store->file_pages;

 page = filemap_get_page(&bitmap->storage, chunk);
 if (!page)
  return;
 bit = file_page_offset(&bitmap->storage, chunk);
 paddr = kmap_atomic(page);
 if (test_bit(BITMAP_HOSTENDIAN, &bitmap->flags))
  clear_bit(bit, paddr);
 else
  clear_bit_le(bit, paddr);
 kunmap_atomic(paddr);
 if (!test_page_attr(bitmap, page->index - node_offset, BITMAP_PAGE_NEEDWRITE)) {
  set_page_attr(bitmap, page->index - node_offset, BITMAP_PAGE_PENDING);
  bitmap->allclean = 0;
 }
}
