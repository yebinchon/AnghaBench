#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bitmap_storage {int file_pages; scalar_t__ sb_page; int /*<<< orphan*/ * file; } ;
struct bitmap_page {int count; struct bitmap_page* map; int /*<<< orphan*/  hijacked; } ;
struct bitmap_counts {unsigned long chunks; int chunkshift; long pages; long missing_pages; int /*<<< orphan*/  lock; struct bitmap_page* bp; } ;
struct bitmap {TYPE_3__* mddev; struct bitmap_counts counts; struct bitmap_storage storage; int /*<<< orphan*/  cluster_slot; } ;
typedef  int /*<<< orphan*/  store ;
typedef  int sector_t ;
typedef  int /*<<< orphan*/  bitmap_super_t ;
typedef  int bitmap_counter_t ;
struct TYPE_6__ {long space; int chunksize; int /*<<< orphan*/  external; scalar_t__ file; scalar_t__ offset; } ;
struct TYPE_8__ {TYPE_2__* pers; TYPE_1__ bitmap_info; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* quiesce ) (TYPE_3__*,int) ;} ;

/* Variables and functions */
 int BITMAP_BLOCK_SHIFT ; 
 int /*<<< orphan*/  BITMAP_PAGE_DIRTY ; 
 long FUNC0 (unsigned long,int) ; 
 unsigned long FUNC1 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int) ; 
 int NEEDED_MASK ; 
 int PAGE_COUNTER_RATIO ; 
 int FUNC3 (int) ; 
 struct bitmap_page* FUNC4 (long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bitmap_page*) ; 
 int FUNC6 (struct bitmap_counts*,unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bitmap_counts*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bitmap*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bitmap_storage*) ; 
 int* FUNC10 (struct bitmap_counts*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bitmap_counts*,int) ; 
 int FUNC12 (struct bitmap_storage*,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bitmap*) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct bitmap_storage*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (struct bitmap*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int) ; 

int FUNC26(struct bitmap *bitmap, sector_t blocks,
		  int chunksize, int init)
{
	/* If chunk_size is 0, choose an appropriate chunk size.
	 * Then possibly allocate new storage space.
	 * Then quiesce, copy bits, replace bitmap, and re-start
	 *
	 * This function is called both to set up the initial bitmap
	 * and to resize the bitmap while the array is active.
	 * If this happens as a result of the array being resized,
	 * chunksize will be zero, and we need to choose a suitable
	 * chunksize, otherwise we use what we are given.
	 */
	struct bitmap_storage store;
	struct bitmap_counts old_counts;
	unsigned long chunks;
	sector_t block;
	sector_t old_blocks, new_blocks;
	int chunkshift;
	int ret = 0;
	long pages;
	struct bitmap_page *new_bp;

	if (bitmap->storage.file && !init) {
		FUNC19("md: cannot resize file-based bitmap\n");
		return -EINVAL;
	}

	if (chunksize == 0) {
		/* If there is enough space, leave the chunk size unchanged,
		 * else increase by factor of two until there is enough space.
		 */
		long bytes;
		long space = bitmap->mddev->bitmap_info.space;

		if (space == 0) {
			/* We don't know how much space there is, so limit
			 * to current size - in sectors.
			 */
			bytes = FUNC0(bitmap->counts.chunks, 8);
			if (!bitmap->mddev->bitmap_info.external)
				bytes += sizeof(bitmap_super_t);
			space = FUNC0(bytes, 512);
			bitmap->mddev->bitmap_info.space = space;
		}
		chunkshift = bitmap->counts.chunkshift;
		chunkshift--;
		do {
			/* 'chunkshift' is shift from block size to chunk size */
			chunkshift++;
			chunks = FUNC1(blocks, 1 << chunkshift);
			bytes = FUNC0(chunks, 8);
			if (!bitmap->mddev->bitmap_info.external)
				bytes += sizeof(bitmap_super_t);
		} while (bytes > (space << 9));
	} else
		chunkshift = FUNC3(~chunksize) - BITMAP_BLOCK_SHIFT;

	chunks = FUNC1(blocks, 1 << chunkshift);
	FUNC16(&store, 0, sizeof(store));
	if (bitmap->mddev->bitmap_info.offset || bitmap->mddev->bitmap_info.file)
		ret = FUNC12(&store, chunks,
					      !bitmap->mddev->bitmap_info.external,
					      FUNC14(bitmap->mddev)
					      ? bitmap->cluster_slot : 0);
	if (ret) {
		FUNC9(&store);
		goto err;
	}

	pages = FUNC0(chunks, PAGE_COUNTER_RATIO);

	new_bp = FUNC4(pages, sizeof(*new_bp), GFP_KERNEL);
	ret = -ENOMEM;
	if (!new_bp) {
		FUNC9(&store);
		goto err;
	}

	if (!init)
		bitmap->mddev->pers->quiesce(bitmap->mddev, 1);

	store.file = bitmap->storage.file;
	bitmap->storage.file = NULL;

	if (store.sb_page && bitmap->storage.sb_page)
		FUNC15(FUNC18(store.sb_page),
		       FUNC18(bitmap->storage.sb_page),
		       sizeof(bitmap_super_t));
	FUNC9(&bitmap->storage);
	bitmap->storage = store;

	old_counts = bitmap->counts;
	bitmap->counts.bp = new_bp;
	bitmap->counts.pages = pages;
	bitmap->counts.missing_pages = pages;
	bitmap->counts.chunkshift = chunkshift;
	bitmap->counts.chunks = chunks;
	bitmap->mddev->bitmap_info.chunksize = 1 << (chunkshift +
						     BITMAP_BLOCK_SHIFT);

	blocks = FUNC17(old_counts.chunks << old_counts.chunkshift,
		     chunks << chunkshift);

	FUNC22(&bitmap->counts.lock);
	/* For cluster raid, need to pre-allocate bitmap */
	if (FUNC14(bitmap->mddev)) {
		unsigned long page;
		for (page = 0; page < pages; page++) {
			ret = FUNC6(&bitmap->counts, page, 1, 1);
			if (ret) {
				unsigned long k;

				/* deallocate the page memory */
				for (k = 0; k < page; k++) {
					FUNC5(new_bp[k].map);
				}
				FUNC5(new_bp);

				/* restore some fields from old_counts */
				bitmap->counts.bp = old_counts.bp;
				bitmap->counts.pages = old_counts.pages;
				bitmap->counts.missing_pages = old_counts.pages;
				bitmap->counts.chunkshift = old_counts.chunkshift;
				bitmap->counts.chunks = old_counts.chunks;
				bitmap->mddev->bitmap_info.chunksize = 1 << (old_counts.chunkshift +
									     BITMAP_BLOCK_SHIFT);
				blocks = old_counts.chunks << old_counts.chunkshift;
				FUNC20("Could not pre-allocate in-memory bitmap for cluster raid\n");
				break;
			} else
				bitmap->counts.bp[page].count += 1;
		}
	}

	for (block = 0; block < blocks; ) {
		bitmap_counter_t *bmc_old, *bmc_new;
		int set;

		bmc_old = FUNC10(&old_counts, block, &old_blocks, 0);
		set = bmc_old && FUNC2(*bmc_old);

		if (set) {
			bmc_new = FUNC10(&bitmap->counts, block, &new_blocks, 1);
			if (*bmc_new == 0) {
				/* need to set on-disk bits too. */
				sector_t end = block + new_blocks;
				sector_t start = block >> chunkshift;
				start <<= chunkshift;
				while (start < end) {
					FUNC8(bitmap, block);
					start += 1 << chunkshift;
				}
				*bmc_new = 2;
				FUNC7(&bitmap->counts, block, 1);
				FUNC11(&bitmap->counts, block);
			}
			*bmc_new |= NEEDED_MASK;
			if (new_blocks < old_blocks)
				old_blocks = new_blocks;
		}
		block += old_blocks;
	}

	if (bitmap->counts.bp != old_counts.bp) {
		unsigned long k;
		for (k = 0; k < old_counts.pages; k++)
			if (!old_counts.bp[k].hijacked)
				FUNC5(old_counts.bp[k].map);
		FUNC5(old_counts.bp);
	}

	if (!init) {
		int i;
		while (block < (chunks << chunkshift)) {
			bitmap_counter_t *bmc;
			bmc = FUNC10(&bitmap->counts, block, &new_blocks, 1);
			if (bmc) {
				/* new space.  It needs to be resynced, so
				 * we set NEEDED_MASK.
				 */
				if (*bmc == 0) {
					*bmc = NEEDED_MASK | 2;
					FUNC7(&bitmap->counts, block, 1);
					FUNC11(&bitmap->counts, block);
				}
			}
			block += new_blocks;
		}
		for (i = 0; i < bitmap->storage.file_pages; i++)
			FUNC21(bitmap, i, BITMAP_PAGE_DIRTY);
	}
	FUNC23(&bitmap->counts.lock);

	if (!init) {
		FUNC13(bitmap);
		bitmap->mddev->pers->quiesce(bitmap->mddev, 0);
	}
	ret = 0;
err:
	return ret;
}