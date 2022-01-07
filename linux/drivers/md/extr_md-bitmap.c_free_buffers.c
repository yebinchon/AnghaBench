
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;


 int PagePrivate (struct page*) ;
 int __clear_page_buffers (struct page*) ;
 int free_buffer_head (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static void free_buffers(struct page *page)
{
 struct buffer_head *bh;

 if (!PagePrivate(page))
  return;

 bh = page_buffers(page);
 while (bh) {
  struct buffer_head *next = bh->b_this_page;
  free_buffer_head(bh);
  bh = next;
 }
 __clear_page_buffers(page);
 put_page(page);
}
