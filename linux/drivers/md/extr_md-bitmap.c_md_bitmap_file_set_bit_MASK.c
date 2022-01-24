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
struct page {scalar_t__ index; } ;
struct bitmap_storage {unsigned long file_pages; } ;
struct TYPE_2__ {unsigned long chunkshift; } ;
struct bitmap {unsigned long cluster_slot; int /*<<< orphan*/  flags; struct bitmap_storage storage; int /*<<< orphan*/  mddev; TYPE_1__ counts; } ;
typedef  unsigned long sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_HOSTENDIAN ; 
 int /*<<< orphan*/  BITMAP_PAGE_DIRTY ; 
 unsigned long FUNC0 (struct bitmap_storage*,unsigned long) ; 
 struct page* FUNC1 (struct bitmap_storage*,unsigned long) ; 
 void* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct bitmap*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct bitmap *bitmap, sector_t block)
{
	unsigned long bit;
	struct page *page;
	void *kaddr;
	unsigned long chunk = block >> bitmap->counts.chunkshift;
	struct bitmap_storage *store = &bitmap->storage;
	unsigned long node_offset = 0;

	if (FUNC4(bitmap->mddev))
		node_offset = bitmap->cluster_slot * store->file_pages;

	page = FUNC1(&bitmap->storage, chunk);
	if (!page)
		return;
	bit = FUNC0(&bitmap->storage, chunk);

	/* set the bit */
	kaddr = FUNC2(page);
	if (FUNC9(BITMAP_HOSTENDIAN, &bitmap->flags))
		FUNC6(bit, kaddr);
	else
		FUNC7(bit, kaddr);
	FUNC3(kaddr);
	FUNC5("set file bit %lu page %lu\n", bit, page->index);
	/* record page number so it gets flushed to disk when unplug occurs */
	FUNC8(bitmap, page->index - node_offset, BITMAP_PAGE_DIRTY);
}