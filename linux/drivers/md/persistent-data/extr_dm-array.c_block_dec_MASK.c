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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct dm_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tm; } ;
struct dm_array_info {TYPE_1__ btree_info; } ;
struct array_block {int dummy; } ;
typedef  int /*<<< orphan*/  block_le ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_array_info*,struct array_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int FUNC4 (struct dm_array_info*,scalar_t__,struct dm_block**,struct array_block**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_array_info*,struct dm_block*) ; 

__attribute__((used)) static void FUNC8(void *context, const void *value)
{
	int r;
	uint64_t b;
	__le64 block_le;
	uint32_t ref_count;
	struct dm_block *block;
	struct array_block *ab;
	struct dm_array_info *info = context;

	FUNC6(&block_le, value, sizeof(block_le));
	b = FUNC5(block_le);

	r = FUNC3(info->btree_info.tm, b, &ref_count);
	if (r) {
		FUNC0("couldn't get reference count for block %llu",
			    (unsigned long long) b);
		return;
	}

	if (ref_count == 1) {
		/*
		 * We're about to drop the last reference to this ablock.
		 * So we need to decrement the ref count of the contents.
		 */
		r = FUNC4(info, b, &block, &ab);
		if (r) {
			FUNC0("couldn't get array block %llu",
				    (unsigned long long) b);
			return;
		}

		FUNC1(info, ab);
		FUNC7(info, block);
	}

	FUNC2(info->btree_info.tm, b);
}