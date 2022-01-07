
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {scalar_t__ index; } ;
struct bitmap_storage {unsigned long file_pages; } ;
struct TYPE_2__ {unsigned long chunkshift; } ;
struct bitmap {unsigned long cluster_slot; int flags; struct bitmap_storage storage; int mddev; TYPE_1__ counts; } ;
typedef unsigned long sector_t ;


 int BITMAP_HOSTENDIAN ;
 int BITMAP_PAGE_DIRTY ;
 unsigned long file_page_offset (struct bitmap_storage*,unsigned long) ;
 struct page* filemap_get_page (struct bitmap_storage*,unsigned long) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 scalar_t__ mddev_is_clustered (int ) ;
 int pr_debug (char*,unsigned long,scalar_t__) ;
 int set_bit (unsigned long,void*) ;
 int set_bit_le (unsigned long,void*) ;
 int set_page_attr (struct bitmap*,scalar_t__,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void md_bitmap_file_set_bit(struct bitmap *bitmap, sector_t block)
{
 unsigned long bit;
 struct page *page;
 void *kaddr;
 unsigned long chunk = block >> bitmap->counts.chunkshift;
 struct bitmap_storage *store = &bitmap->storage;
 unsigned long node_offset = 0;

 if (mddev_is_clustered(bitmap->mddev))
  node_offset = bitmap->cluster_slot * store->file_pages;

 page = filemap_get_page(&bitmap->storage, chunk);
 if (!page)
  return;
 bit = file_page_offset(&bitmap->storage, chunk);


 kaddr = kmap_atomic(page);
 if (test_bit(BITMAP_HOSTENDIAN, &bitmap->flags))
  set_bit(bit, kaddr);
 else
  set_bit_le(bit, kaddr);
 kunmap_atomic(kaddr);
 pr_debug("set file bit %lu page %lu\n", bit, page->index);

 set_page_attr(bitmap, page->index - node_offset, BITMAP_PAGE_DIRTY);
}
