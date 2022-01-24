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
struct vm_area_struct {TYPE_1__* vm_file; } ;
struct page {int /*<<< orphan*/ * mapping; } ;
struct msc_iter {struct msc* msc; } ;
struct msc {unsigned long nr_pages; int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  user_count; int /*<<< orphan*/  mmap_count; } ;
struct TYPE_2__ {struct msc_iter* private_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct page* FUNC3 (struct msc*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct vm_area_struct *vma)
{
	struct msc_iter *iter = vma->vm_file->private_data;
	struct msc *msc = iter->msc;
	unsigned long pg;

	if (!FUNC2(&msc->mmap_count, &msc->buf_mutex))
		return;

	/* drop page _refcounts */
	for (pg = 0; pg < msc->nr_pages; pg++) {
		struct page *page = FUNC3(msc, pg);

		if (FUNC0(!page))
			continue;

		if (page->mapping)
			page->mapping = NULL;
	}

	/* last mapping -- drop user_count */
	FUNC1(&msc->user_count);
	FUNC4(&msc->buf_mutex);
}