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
struct bitmap {unsigned long cluster_slot; scalar_t__ allclean; int /*<<< orphan*/  flags; struct bitmap_storage storage; int /*<<< orphan*/  mddev; TYPE_1__ counts; } ;
typedef  unsigned long sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_HOSTENDIAN ; 
 int /*<<< orphan*/  BITMAP_PAGE_NEEDWRITE ; 
 int /*<<< orphan*/  BITMAP_PAGE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,void*) ; 
 unsigned long FUNC2 (struct bitmap_storage*,unsigned long) ; 
 struct page* FUNC3 (struct bitmap_storage*,unsigned long) ; 
 void* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bitmap*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct bitmap*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct bitmap *bitmap, sector_t block)
{
	unsigned long bit;
	struct page *page;
	void *paddr;
	unsigned long chunk = block >> bitmap->counts.chunkshift;
	struct bitmap_storage *store = &bitmap->storage;
	unsigned long node_offset = 0;

	if (FUNC6(bitmap->mddev))
		node_offset = bitmap->cluster_slot * store->file_pages;

	page = FUNC3(&bitmap->storage, chunk);
	if (!page)
		return;
	bit = FUNC2(&bitmap->storage, chunk);
	paddr = FUNC4(page);
	if (FUNC8(BITMAP_HOSTENDIAN, &bitmap->flags))
		FUNC0(bit, paddr);
	else
		FUNC1(bit, paddr);
	FUNC5(paddr);
	if (!FUNC9(bitmap, page->index - node_offset, BITMAP_PAGE_NEEDWRITE)) {
		FUNC7(bitmap, page->index - node_offset, BITMAP_PAGE_PENDING);
		bitmap->allclean = 0;
	}
}