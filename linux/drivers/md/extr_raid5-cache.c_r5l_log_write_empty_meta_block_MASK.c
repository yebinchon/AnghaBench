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
typedef  int /*<<< orphan*/  u64 ;
struct r5l_meta_block {int /*<<< orphan*/  checksum; } ;
struct r5l_log {int /*<<< orphan*/  rdev; int /*<<< orphan*/  uuid_checksum; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int REQ_FUA ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct r5l_meta_block*,int /*<<< orphan*/ ) ; 
 struct r5l_meta_block* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct r5l_log*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(struct r5l_log *log, sector_t pos,
					  u64 seq)
{
	struct page *page;
	struct r5l_meta_block *mb;

	page = FUNC1(GFP_KERNEL);
	if (!page)
		return -ENOMEM;
	FUNC5(log, page, pos, seq);
	mb = FUNC4(page);
	mb->checksum = FUNC2(FUNC3(log->uuid_checksum,
					     mb, PAGE_SIZE));
	if (!FUNC6(log->rdev, pos, PAGE_SIZE, page, REQ_OP_WRITE,
			  REQ_SYNC | REQ_FUA, false)) {
		FUNC0(page);
		return -EIO;
	}
	FUNC0(page);
	return 0;
}