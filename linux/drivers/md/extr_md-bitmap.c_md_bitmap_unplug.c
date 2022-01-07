
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long file_pages; int * filemap; } ;
struct bitmap {int flags; TYPE_2__ storage; TYPE_1__* mddev; } ;
struct TYPE_3__ {scalar_t__ queue; } ;


 int BITMAP_PAGE_DIRTY ;
 int BITMAP_PAGE_NEEDWRITE ;
 int BITMAP_PAGE_PENDING ;
 int BITMAP_STALE ;
 int BITMAP_WRITE_ERROR ;
 int blk_add_trace_msg (scalar_t__,char*) ;
 int clear_page_attr (struct bitmap*,unsigned long,int ) ;
 int md_bitmap_file_kick (struct bitmap*) ;
 int md_bitmap_wait_writes (struct bitmap*) ;
 int test_and_clear_page_attr (struct bitmap*,unsigned long,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int write_page (struct bitmap*,int ,int ) ;

void md_bitmap_unplug(struct bitmap *bitmap)
{
 unsigned long i;
 int dirty, need_write;
 int writing = 0;

 if (!bitmap || !bitmap->storage.filemap ||
     test_bit(BITMAP_STALE, &bitmap->flags))
  return;



 for (i = 0; i < bitmap->storage.file_pages; i++) {
  if (!bitmap->storage.filemap)
   return;
  dirty = test_and_clear_page_attr(bitmap, i, BITMAP_PAGE_DIRTY);
  need_write = test_and_clear_page_attr(bitmap, i,
            BITMAP_PAGE_NEEDWRITE);
  if (dirty || need_write) {
   if (!writing) {
    md_bitmap_wait_writes(bitmap);
    if (bitmap->mddev->queue)
     blk_add_trace_msg(bitmap->mddev->queue,
         "md bitmap_unplug");
   }
   clear_page_attr(bitmap, i, BITMAP_PAGE_PENDING);
   write_page(bitmap, bitmap->storage.filemap[i], 0);
   writing = 1;
  }
 }
 if (writing)
  md_bitmap_wait_writes(bitmap);

 if (test_bit(BITMAP_WRITE_ERROR, &bitmap->flags))
  md_bitmap_file_kick(bitmap);
}
