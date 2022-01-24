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
typedef  unsigned int uint64_t ;
struct walk_info {int (* fn ) (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  info; int /*<<< orphan*/  context; } ;
struct dm_block {int dummy; } ;
struct array_block {int /*<<< orphan*/  nr_entries; int /*<<< orphan*/  max_entries; } ;
typedef  int /*<<< orphan*/  block_le ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct array_block*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_block**,struct array_block**) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct dm_block*) ; 

__attribute__((used)) static int FUNC7(void *context, uint64_t *keys, void *leaf)
{
	struct walk_info *wi = context;

	int r;
	unsigned i;
	__le64 block_le;
	unsigned nr_entries, max_entries;
	struct dm_block *block;
	struct array_block *ab;

	FUNC4(&block_le, leaf, sizeof(block_le));
	r = FUNC1(wi->info, FUNC3(block_le), &block, &ab);
	if (r)
		return r;

	max_entries = FUNC2(ab->max_entries);
	nr_entries = FUNC2(ab->nr_entries);
	for (i = 0; i < nr_entries; i++) {
		r = wi->fn(wi->context, keys[0] * max_entries + i,
			   FUNC0(wi->info, ab, i));

		if (r)
			break;
	}

	FUNC6(wi->info, block);
	return r;
}