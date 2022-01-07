
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {unsigned long index; } ;
struct inode {int i_blkbits; TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; struct buffer_head* b_this_page; struct bitmap* b_private; int b_end_io; int b_bdev; } ;
struct bitmap {int flags; int pending_writes; int write_wait; } ;
typedef unsigned long sector_t ;
struct TYPE_2__ {int s_bdev; } ;


 int BITMAP_WRITE_ERROR ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 unsigned long long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int REQ_OP_READ ;
 struct buffer_head* alloc_page_buffers (struct page*,int,int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int attach_page_buffers (struct page*,struct buffer_head*) ;
 scalar_t__ bmap (struct inode*,unsigned long) ;
 int end_bitmap_write ;
 struct inode* file_inode (struct file*) ;
 int pr_debug (char*,int,unsigned long long) ;
 int pr_err (char*,int,unsigned long long,int) ;
 int set_buffer_locked (struct buffer_head*) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int submit_bh (int ,int ,struct buffer_head*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int read_page(struct file *file, unsigned long index,
       struct bitmap *bitmap,
       unsigned long count,
       struct page *page)
{
 int ret = 0;
 struct inode *inode = file_inode(file);
 struct buffer_head *bh;
 sector_t block;

 pr_debug("read bitmap file (%dB @ %llu)\n", (int)PAGE_SIZE,
   (unsigned long long)index << PAGE_SHIFT);

 bh = alloc_page_buffers(page, 1<<inode->i_blkbits, 0);
 if (!bh) {
  ret = -ENOMEM;
  goto out;
 }
 attach_page_buffers(page, bh);
 block = index << (PAGE_SHIFT - inode->i_blkbits);
 while (bh) {
  if (count == 0)
   bh->b_blocknr = 0;
  else {
   bh->b_blocknr = bmap(inode, block);
   if (bh->b_blocknr == 0) {

    ret = -EINVAL;
    goto out;
   }
   bh->b_bdev = inode->i_sb->s_bdev;
   if (count < (1<<inode->i_blkbits))
    count = 0;
   else
    count -= (1<<inode->i_blkbits);

   bh->b_end_io = end_bitmap_write;
   bh->b_private = bitmap;
   atomic_inc(&bitmap->pending_writes);
   set_buffer_locked(bh);
   set_buffer_mapped(bh);
   submit_bh(REQ_OP_READ, 0, bh);
  }
  block++;
  bh = bh->b_this_page;
 }
 page->index = index;

 wait_event(bitmap->write_wait,
     atomic_read(&bitmap->pending_writes)==0);
 if (test_bit(BITMAP_WRITE_ERROR, &bitmap->flags))
  ret = -EIO;
out:
 if (ret)
  pr_err("md: bitmap read error: (%dB @ %llu): %d\n",
         (int)PAGE_SIZE,
         (unsigned long long)index << PAGE_SHIFT,
         ret);
 return ret;
}
