#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long file_pages; int /*<<< orphan*/ * filemap; } ;
struct bitmap {int /*<<< orphan*/  flags; TYPE_2__ storage; TYPE_1__* mddev; } ;
struct TYPE_3__ {scalar_t__ queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_PAGE_DIRTY ; 
 int /*<<< orphan*/  BITMAP_PAGE_NEEDWRITE ; 
 int /*<<< orphan*/  BITMAP_PAGE_PENDING ; 
 int /*<<< orphan*/  BITMAP_STALE ; 
 int /*<<< orphan*/  BITMAP_WRITE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct bitmap*) ; 
 int FUNC4 (struct bitmap*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bitmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct bitmap *bitmap)
{
	unsigned long i;
	int dirty, need_write;
	int writing = 0;

	if (!bitmap || !bitmap->storage.filemap ||
	    FUNC5(BITMAP_STALE, &bitmap->flags))
		return;

	/* look at each page to see if there are any set bits that need to be
	 * flushed out to disk */
	for (i = 0; i < bitmap->storage.file_pages; i++) {
		if (!bitmap->storage.filemap)
			return;
		dirty = FUNC4(bitmap, i, BITMAP_PAGE_DIRTY);
		need_write = FUNC4(bitmap, i,
						      BITMAP_PAGE_NEEDWRITE);
		if (dirty || need_write) {
			if (!writing) {
				FUNC3(bitmap);
				if (bitmap->mddev->queue)
					FUNC0(bitmap->mddev->queue,
							  "md bitmap_unplug");
			}
			FUNC1(bitmap, i, BITMAP_PAGE_PENDING);
			FUNC6(bitmap, bitmap->storage.filemap[i], 0);
			writing = 1;
		}
	}
	if (writing)
		FUNC3(bitmap);

	if (FUNC5(BITMAP_WRITE_ERROR, &bitmap->flags))
		FUNC2(bitmap);
}