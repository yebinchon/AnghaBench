#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct page {int dummy; } ;
struct dm_crypt_io {struct crypt_config* cc; } ;
struct crypt_config {int /*<<< orphan*/  bio_alloc_lock; int /*<<< orphan*/  page_pool; int /*<<< orphan*/  bs; } ;
struct bio {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int GFP_NOWAIT ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int __GFP_DIRECT_RECLAIM ; 
 int __GFP_HIGHMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_crypt_io*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypt_config*,struct bio*) ; 
 scalar_t__ FUNC5 (struct dm_crypt_io*,struct bio*) ; 
 struct page* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct bio *FUNC10(struct dm_crypt_io *io, unsigned size)
{
	struct crypt_config *cc = io->cc;
	struct bio *clone;
	unsigned int nr_iovecs = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
	gfp_t gfp_mask = GFP_NOWAIT | __GFP_HIGHMEM;
	unsigned i, len, remaining_size;
	struct page *page;

retry:
	if (FUNC9(gfp_mask & __GFP_DIRECT_RECLAIM))
		FUNC7(&cc->bio_alloc_lock);

	clone = FUNC1(GFP_NOIO, nr_iovecs, &cc->bs);
	if (!clone)
		goto out;

	FUNC3(io, clone);

	remaining_size = size;

	for (i = 0; i < nr_iovecs; i++) {
		page = FUNC6(&cc->page_pool, gfp_mask);
		if (!page) {
			FUNC4(cc, clone);
			FUNC2(clone);
			gfp_mask |= __GFP_DIRECT_RECLAIM;
			goto retry;
		}

		len = (remaining_size > PAGE_SIZE) ? PAGE_SIZE : remaining_size;

		FUNC0(clone, page, len, 0);

		remaining_size -= len;
	}

	/* Allocate space for integrity tags */
	if (FUNC5(io, clone)) {
		FUNC4(cc, clone);
		FUNC2(clone);
		clone = NULL;
	}
out:
	if (FUNC9(gfp_mask & __GFP_DIRECT_RECLAIM))
		FUNC8(&cc->bio_alloc_lock);

	return clone;
}