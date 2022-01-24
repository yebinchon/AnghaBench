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
struct disk_bitmap_header {scalar_t__ csum; int /*<<< orphan*/  not_used; int /*<<< orphan*/  blocknr; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_CSUM_XOR ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int EILSEQ ; 
 int ENOTBLK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct disk_bitmap_header* FUNC2 (struct dm_block*) ; 
 scalar_t__ FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dm_block_validator *v,
			   struct dm_block *b,
			   size_t block_size)
{
	struct disk_bitmap_header *disk_header = FUNC2(b);
	__le32 csum_disk;

	if (FUNC3(b) != FUNC6(disk_header->blocknr)) {
		FUNC0("bitmap check failed: blocknr %llu != wanted %llu",
			    FUNC6(disk_header->blocknr), FUNC3(b));
		return -ENOTBLK;
	}

	csum_disk = FUNC1(FUNC4(&disk_header->not_used,
					       block_size - sizeof(__le32),
					       BITMAP_CSUM_XOR));
	if (csum_disk != disk_header->csum) {
		FUNC0("bitmap check failed: csum %u != wanted %u",
			    FUNC5(csum_disk), FUNC5(disk_header->csum));
		return -EILSEQ;
	}

	return 0;
}