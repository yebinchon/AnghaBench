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
struct pending_block {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; int /*<<< orphan*/  data; int /*<<< orphan*/  datalen; } ;
struct log_writes_c {int sectorsize; int /*<<< orphan*/  log_kthread; int /*<<< orphan*/  blocks_lock; int /*<<< orphan*/  logging_blocks; int /*<<< orphan*/  pending_blocks; } ;
struct log_write_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LOG_MARK_FLAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pending_block*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int /*<<< orphan*/ ) ; 
 struct pending_block* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct log_writes_c *lc, char *data)
{
	struct pending_block *block;
	size_t maxsize = lc->sectorsize - sizeof(struct log_write_entry);

	block = FUNC4(sizeof(struct pending_block), GFP_KERNEL);
	if (!block) {
		FUNC0("Error allocating pending block");
		return -ENOMEM;
	}

	block->data = FUNC3(data, maxsize - 1, GFP_KERNEL);
	if (!block->data) {
		FUNC0("Error copying mark data");
		FUNC2(block);
		return -ENOMEM;
	}
	FUNC1(&lc->pending_blocks);
	block->datalen = FUNC8(block->data);
	block->flags |= LOG_MARK_FLAG;
	FUNC6(&lc->blocks_lock);
	FUNC5(&block->list, &lc->logging_blocks);
	FUNC7(&lc->blocks_lock);
	FUNC9(lc->log_kthread);
	return 0;
}