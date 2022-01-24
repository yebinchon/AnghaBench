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
typedef  scalar_t__ u32 ;
struct r5l_meta_block {scalar_t__ version; int /*<<< orphan*/  seq; int /*<<< orphan*/  position; scalar_t__ checksum; scalar_t__ magic; } ;
struct r5l_log {int device_size; int max_free_space; scalar_t__ next_checkpoint; scalar_t__ last_cp_seq; scalar_t__ seq; int /*<<< orphan*/  log_start; scalar_t__ last_checkpoint; int /*<<< orphan*/  uuid_checksum; struct md_rdev* rdev; } ;
struct page {int dummy; } ;
struct md_rdev {scalar_t__ journal_tail; scalar_t__ sectors; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_SECTORS ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ R5LOG_MAGIC ; 
 scalar_t__ R5LOG_VERSION ; 
 int RECLAIM_MAX_FREE_SPACE ; 
 int RECLAIM_MAX_FREE_SPACE_SHIFT ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct r5l_meta_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct r5l_meta_block* FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct r5l_log*) ; 
 int /*<<< orphan*/  FUNC8 (struct r5l_log*,scalar_t__,scalar_t__) ; 
 int FUNC9 (struct r5l_log*) ; 
 int /*<<< orphan*/  FUNC10 (struct r5l_log*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct r5l_log*,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct md_rdev*,scalar_t__,int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct r5l_log *log)
{
	struct md_rdev *rdev = log->rdev;
	struct page *page;
	struct r5l_meta_block *mb;
	sector_t cp = log->rdev->journal_tail;
	u32 stored_crc, expected_crc;
	bool create_super = false;
	int ret = 0;

	/* Make sure it's valid */
	if (cp >= rdev->sectors || FUNC12(cp, BLOCK_SECTORS) != cp)
		cp = 0;
	page = FUNC1(GFP_KERNEL);
	if (!page)
		return -ENOMEM;

	if (!FUNC13(rdev, cp, PAGE_SIZE, page, REQ_OP_READ, 0, false)) {
		ret = -EIO;
		goto ioerr;
	}
	mb = FUNC5(page);

	if (FUNC3(mb->magic) != R5LOG_MAGIC ||
	    mb->version != R5LOG_VERSION) {
		create_super = true;
		goto create;
	}
	stored_crc = FUNC3(mb->checksum);
	mb->checksum = 0;
	expected_crc = FUNC2(log->uuid_checksum, mb, PAGE_SIZE);
	if (stored_crc != expected_crc) {
		create_super = true;
		goto create;
	}
	if (FUNC4(mb->position) != cp) {
		create_super = true;
		goto create;
	}
create:
	if (create_super) {
		log->last_cp_seq = FUNC6();
		cp = 0;
		FUNC8(log, cp, log->last_cp_seq);
		/*
		 * Make sure super points to correct address. Log might have
		 * data very soon. If super hasn't correct log tail address,
		 * recovery can't find the log
		 */
		FUNC11(log, cp);
	} else
		log->last_cp_seq = FUNC4(mb->seq);

	log->device_size = FUNC12(rdev->sectors, BLOCK_SECTORS);
	log->max_free_space = log->device_size >> RECLAIM_MAX_FREE_SPACE_SHIFT;
	if (log->max_free_space > RECLAIM_MAX_FREE_SPACE)
		log->max_free_space = RECLAIM_MAX_FREE_SPACE;
	log->last_checkpoint = cp;

	FUNC0(page);

	if (create_super) {
		log->log_start = FUNC10(log, cp, BLOCK_SECTORS);
		log->seq = log->last_cp_seq + 1;
		log->next_checkpoint = cp;
	} else
		ret = FUNC9(log);

	FUNC7(log);
	return ret;
ioerr:
	FUNC0(page);
	return ret;
}