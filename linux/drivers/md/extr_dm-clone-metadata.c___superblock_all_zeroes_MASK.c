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
struct dm_block_manager {int dummy; } ;
struct dm_block {int dummy; } ;
typedef  scalar_t__ __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SUPERBLOCK_LOCATION ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (struct dm_block*) ; 
 int FUNC4 (struct dm_block_manager*) ; 
 int FUNC5 (struct dm_block_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_block*) ; 

__attribute__((used)) static int FUNC7(struct dm_block_manager *bm, bool *formatted)
{
	int r;
	unsigned int i, nr_words;
	struct dm_block *sblock;
	__le64 *data_le, zero = FUNC2(0);

	/*
	 * We don't use a validator here because the superblock could be all
	 * zeroes.
	 */
	r = FUNC5(bm, SUPERBLOCK_LOCATION, NULL, &sblock);
	if (r) {
		FUNC1("Failed to read_lock superblock");
		return r;
	}

	data_le = FUNC3(sblock);
	*formatted = false;

	/* This assumes that the block size is a multiple of 8 bytes */
	FUNC0(FUNC4(bm) % sizeof(__le64));
	nr_words = FUNC4(bm) / sizeof(__le64);
	for (i = 0; i < nr_words; i++) {
		if (data_le[i] != zero) {
			*formatted = true;
			break;
		}
	}

	FUNC6(sblock);

	return 0;
}