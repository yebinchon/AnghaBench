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
struct superblock_disk {scalar_t__ csum; int /*<<< orphan*/  flags; int /*<<< orphan*/  magic; int /*<<< orphan*/  blocknr; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,unsigned long long) ; 
 int EILSEQ ; 
 int ENOTBLK ; 
 int /*<<< orphan*/  SUPERBLOCK_CSUM_XOR ; 
 scalar_t__ SUPERBLOCK_MAGIC ; 
 int FUNC1 (struct superblock_disk*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct superblock_disk* FUNC3 (struct dm_block*) ; 
 scalar_t__ FUNC4 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC6 (scalar_t__) ; 
 unsigned long long FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dm_block_validator *v,
		    struct dm_block *b,
		    size_t sb_block_size)
{
	struct superblock_disk *disk = FUNC3(b);
	__le32 csum_le;

	if (FUNC4(b) != FUNC7(disk->blocknr)) {
		FUNC0("sb_check failed: blocknr %llu: wanted %llu",
		      FUNC7(disk->blocknr),
		      (unsigned long long)FUNC4(b));
		return -ENOTBLK;
	}

	if (FUNC7(disk->magic) != SUPERBLOCK_MAGIC) {
		FUNC0("sb_check failed: magic %llu: wanted %llu",
		      FUNC7(disk->magic),
		      (unsigned long long) SUPERBLOCK_MAGIC);
		return -EILSEQ;
	}

	csum_le = FUNC2(FUNC5(&disk->flags,
					     sb_block_size - sizeof(__le32),
					     SUPERBLOCK_CSUM_XOR));
	if (csum_le != disk->csum) {
		FUNC0("sb_check failed: csum %u: wanted %u",
		      FUNC6(csum_le), FUNC6(disk->csum));
		return -EILSEQ;
	}

	return FUNC1(disk);
}