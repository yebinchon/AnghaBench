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
typedef  int /*<<< orphan*/  uint64_t ;
struct dm_cache_metadata {scalar_t__ clean_when_opened; } ;
struct dm_bitset_cursor {int dummy; } ;
struct dm_array_cursor {int dummy; } ;
typedef  int /*<<< orphan*/  mapping ;
typedef  int (* load_mapping_fn ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ;
typedef  int /*<<< orphan*/  hint ;
typedef  int /*<<< orphan*/  dm_oblock_t ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 unsigned int M_VALID ; 
 int /*<<< orphan*/  FUNC1 (struct dm_array_cursor*,void**) ; 
 int FUNC2 (struct dm_bitset_cursor*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static int FUNC8(struct dm_cache_metadata *cmd,
			     uint64_t cb, bool hints_valid,
			     struct dm_array_cursor *mapping_cursor,
			     struct dm_array_cursor *hint_cursor,
			     struct dm_bitset_cursor *dirty_cursor,
			     load_mapping_fn fn, void *context)
{
	int r = 0;

	__le64 mapping;
	__le32 hint = 0;

	__le64 *mapping_value_le;
	__le32 *hint_value_le;

	dm_oblock_t oblock;
	unsigned flags;
	bool dirty = true;

	FUNC1(mapping_cursor, (void **) &mapping_value_le);
	FUNC5(&mapping, mapping_value_le, sizeof(mapping));
	FUNC7(mapping, &oblock, &flags);

	if (flags & M_VALID) {
		if (hints_valid) {
			FUNC1(hint_cursor, (void **) &hint_value_le);
			FUNC5(&hint, hint_value_le, sizeof(hint));
		}
		if (cmd->clean_when_opened)
			dirty = FUNC2(dirty_cursor);

		r = fn(context, oblock, FUNC6(cb), dirty,
		       FUNC4(hint), hints_valid);
		if (r) {
			FUNC0("policy couldn't load cache block %llu",
			      (unsigned long long) FUNC3(FUNC6(cb)));
		}
	}

	return r;
}