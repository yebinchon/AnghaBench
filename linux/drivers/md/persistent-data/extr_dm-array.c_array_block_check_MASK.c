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
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
struct array_block {scalar_t__ csum; int /*<<< orphan*/  max_entries; int /*<<< orphan*/  blocknr; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  CSUM_XOR ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 int EILSEQ ; 
 int ENOTBLK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct array_block* FUNC2 (struct dm_block*) ; 
 scalar_t__ FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dm_block_validator *v,
			     struct dm_block *b,
			     size_t size_of_block)
{
	struct array_block *bh_le = FUNC2(b);
	__le32 csum_disk;

	if (FUNC3(b) != FUNC6(bh_le->blocknr)) {
		FUNC0("array_block_check failed: blocknr %llu != wanted %llu",
			    (unsigned long long) FUNC6(bh_le->blocknr),
			    (unsigned long long) FUNC3(b));
		return -ENOTBLK;
	}

	csum_disk = FUNC1(FUNC4(&bh_le->max_entries,
					       size_of_block - sizeof(__le32),
					       CSUM_XOR));
	if (csum_disk != bh_le->csum) {
		FUNC0("array_block_check failed: csum %u != wanted %u",
			    (unsigned) FUNC5(csum_disk),
			    (unsigned) FUNC5(bh_le->csum));
		return -EILSEQ;
	}

	return 0;
}