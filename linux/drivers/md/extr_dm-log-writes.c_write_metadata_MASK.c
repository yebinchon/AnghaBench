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
struct page {int dummy; } ;
struct log_writes_c {size_t sectorsize; TYPE_2__* logdev; } ;
struct TYPE_3__ {scalar_t__ bi_sector; scalar_t__ bi_size; } ;
struct bio {struct log_writes_c* bi_private; int /*<<< orphan*/  bi_end_io; TYPE_1__ bi_iter; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 scalar_t__ WRITE_LOG_SUPER_SECTOR ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct bio*,struct page*,size_t,int /*<<< orphan*/ ) ; 
 struct bio* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  log_end_io ; 
 int /*<<< orphan*/  log_end_super ; 
 int /*<<< orphan*/  FUNC10 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct log_writes_c*) ; 
 int /*<<< orphan*/  FUNC13 (struct bio*) ; 

__attribute__((used)) static int FUNC14(struct log_writes_c *lc, void *entry,
			  size_t entrylen, void *data, size_t datalen,
			  sector_t sector)
{
	struct bio *bio;
	struct page *page;
	void *ptr;
	size_t ret;

	bio = FUNC4(GFP_KERNEL, 1);
	if (!bio) {
		FUNC0("Couldn't alloc log bio");
		goto error;
	}
	bio->bi_iter.bi_size = 0;
	bio->bi_iter.bi_sector = sector;
	FUNC6(bio, lc->logdev->bdev);
	bio->bi_end_io = (sector == WRITE_LOG_SUPER_SECTOR) ?
			  log_end_super : log_end_io;
	bio->bi_private = lc;
	FUNC7(bio, REQ_OP_WRITE, 0);

	page = FUNC2(GFP_KERNEL);
	if (!page) {
		FUNC0("Couldn't alloc log page");
		FUNC5(bio);
		goto error;
	}

	ptr = FUNC8(page);
	FUNC10(ptr, entry, entrylen);
	if (datalen)
		FUNC10(ptr + entrylen, data, datalen);
	FUNC11(ptr + entrylen + datalen, 0,
	       lc->sectorsize - entrylen - datalen);
	FUNC9(ptr);

	ret = FUNC3(bio, page, lc->sectorsize, 0);
	if (ret != lc->sectorsize) {
		FUNC0("Couldn't add page to the log block");
		goto error_bio;
	}
	FUNC13(bio);
	return 0;
error_bio:
	FUNC5(bio);
	FUNC1(page);
error:
	FUNC12(lc);
	return -1;
}