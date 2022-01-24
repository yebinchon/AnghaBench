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
struct dm_writecache {size_t n_blocks; int /*<<< orphan*/ * entries; int /*<<< orphan*/  block_size; int /*<<< orphan*/  memory_map_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  magic; int /*<<< orphan*/  seq_count; int /*<<< orphan*/  n_blocks; int /*<<< orphan*/  block_size; int /*<<< orphan*/  version; int /*<<< orphan*/ * padding; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MEMORY_SUPERBLOCK_MAGIC ; 
 int /*<<< orphan*/  MEMORY_SUPERBLOCK_VERSION ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_writecache*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_writecache*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(struct dm_writecache *wc)
{
	size_t b;
	int r;

	r = FUNC1(wc->memory_map_size, wc->block_size, &wc->n_blocks, NULL);
	if (r)
		return r;

	r = FUNC7(wc);
	if (r)
		return r;

	for (b = 0; b < FUNC0(FUNC5(wc)->padding); b++)
		FUNC4(FUNC5(wc)->padding[b], FUNC3(0));
	FUNC4(FUNC5(wc)->version, FUNC2(MEMORY_SUPERBLOCK_VERSION));
	FUNC4(FUNC5(wc)->block_size, FUNC2(wc->block_size));
	FUNC4(FUNC5(wc)->n_blocks, FUNC3(wc->n_blocks));
	FUNC4(FUNC5(wc)->seq_count, FUNC3(0));

	for (b = 0; b < wc->n_blocks; b++)
		FUNC6(wc, &wc->entries[b], -1, -1);

	FUNC9(wc);
	FUNC8(wc);
	FUNC4(FUNC5(wc)->magic, FUNC2(MEMORY_SUPERBLOCK_MAGIC));
	FUNC10(wc, &FUNC5(wc)->magic, sizeof FUNC5(wc)->magic);
	FUNC8(wc);

	return 0;
}