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
struct cache_disk_superblock {scalar_t__ csum; int /*<<< orphan*/  flags; int /*<<< orphan*/  magic; int /*<<< orphan*/  blocknr; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 scalar_t__ CACHE_SUPERBLOCK_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,unsigned long long) ; 
 int EILSEQ ; 
 int ENOTBLK ; 
 int /*<<< orphan*/  SUPERBLOCK_CSUM_XOR ; 
 int FUNC1 (struct cache_disk_superblock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct cache_disk_superblock* FUNC3 (struct dm_block*) ; 
 scalar_t__ FUNC4 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC6 (scalar_t__) ; 
 unsigned long long FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dm_block_validator *v,
		    struct dm_block *b,
		    size_t sb_block_size)
{
	struct cache_disk_superblock *disk_super = FUNC3(b);
	__le32 csum_le;

	if (FUNC4(b) != FUNC7(disk_super->blocknr)) {
		FUNC0("sb_check failed: blocknr %llu: wanted %llu",
		      FUNC7(disk_super->blocknr),
		      (unsigned long long)FUNC4(b));
		return -ENOTBLK;
	}

	if (FUNC7(disk_super->magic) != CACHE_SUPERBLOCK_MAGIC) {
		FUNC0("sb_check failed: magic %llu: wanted %llu",
		      FUNC7(disk_super->magic),
		      (unsigned long long)CACHE_SUPERBLOCK_MAGIC);
		return -EILSEQ;
	}

	csum_le = FUNC2(FUNC5(&disk_super->flags,
					     sb_block_size - sizeof(__le32),
					     SUPERBLOCK_CSUM_XOR));
	if (csum_le != disk_super->csum) {
		FUNC0("sb_check failed: csum %u: wanted %u",
		      FUNC6(csum_le), FUNC6(disk_super->csum));
		return -EILSEQ;
	}

	return FUNC1(disk_super);
}