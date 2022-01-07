
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {int page; } ;
struct dm_integrity_c {int n_bitmap_blocks; } ;


 int BITMAP_BLOCK_SIZE ;
 unsigned int DIV_ROUND_UP (int ,int) ;
 int PAGE_SIZE ;
 int copy_page (unsigned long*,unsigned long*) ;
 unsigned long* lowmem_page_address (int ) ;

__attribute__((used)) static void block_bitmap_copy(struct dm_integrity_c *ic, struct page_list *dst, struct page_list *src)
{
 unsigned n_bitmap_pages = DIV_ROUND_UP(ic->n_bitmap_blocks, PAGE_SIZE / BITMAP_BLOCK_SIZE);
 unsigned i;

 for (i = 0; i < n_bitmap_pages; i++) {
  unsigned long *dst_data = lowmem_page_address(dst[i].page);
  unsigned long *src_data = lowmem_page_address(src[i].page);
  copy_page(dst_data, src_data);
 }
}
