#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {unsigned long index; } ;
struct inode {int i_blkbits; TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; struct buffer_head* b_this_page; struct bitmap* b_private; int /*<<< orphan*/  b_end_io; int /*<<< orphan*/  b_bdev; } ;
struct bitmap {int /*<<< orphan*/  flags; int /*<<< orphan*/  pending_writes; int /*<<< orphan*/  write_wait; } ;
typedef  unsigned long sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_WRITE_ERROR ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 unsigned long long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 struct buffer_head* FUNC0 (struct page*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct inode*,unsigned long) ; 
 int /*<<< orphan*/  end_bitmap_write ; 
 struct inode* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct file *file, unsigned long index,
		     struct bitmap *bitmap,
		     unsigned long count,
		     struct page *page)
{
	int ret = 0;
	struct inode *inode = FUNC5(file);
	struct buffer_head *bh;
	sector_t block;

	FUNC6("read bitmap file (%dB @ %llu)\n", (int)PAGE_SIZE,
		 (unsigned long long)index << PAGE_SHIFT);

	bh = FUNC0(page, 1<<inode->i_blkbits, false);
	if (!bh) {
		ret = -ENOMEM;
		goto out;
	}
	FUNC3(page, bh);
	block = index << (PAGE_SHIFT - inode->i_blkbits);
	while (bh) {
		if (count == 0)
			bh->b_blocknr = 0;
		else {
			bh->b_blocknr = FUNC4(inode, block);
			if (bh->b_blocknr == 0) {
				/* Cannot use this file! */
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
			FUNC1(&bitmap->pending_writes);
			FUNC8(bh);
			FUNC9(bh);
			FUNC10(REQ_OP_READ, 0, bh);
		}
		block++;
		bh = bh->b_this_page;
	}
	page->index = index;

	FUNC12(bitmap->write_wait,
		   FUNC2(&bitmap->pending_writes)==0);
	if (FUNC11(BITMAP_WRITE_ERROR, &bitmap->flags))
		ret = -EIO;
out:
	if (ret)
		FUNC7("md: bitmap read error: (%dB @ %llu): %d\n",
		       (int)PAGE_SIZE,
		       (unsigned long long)index << PAGE_SHIFT,
		       ret);
	return ret;
}