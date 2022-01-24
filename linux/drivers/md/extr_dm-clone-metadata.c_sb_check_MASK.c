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
typedef  int /*<<< orphan*/  u32 ;
struct superblock_disk {scalar_t__ csum; scalar_t__ version; int /*<<< orphan*/  flags; int /*<<< orphan*/  magic; int /*<<< orphan*/  blocknr; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,unsigned long long,...) ; 
 int /*<<< orphan*/  DM_CLONE_MAX_METADATA_VERSION ; 
 int /*<<< orphan*/  DM_CLONE_MIN_METADATA_VERSION ; 
 int EILSEQ ; 
 int EINVAL ; 
 int ENOTBLK ; 
 int /*<<< orphan*/  SUPERBLOCK_CSUM_XOR ; 
 scalar_t__ SUPERBLOCK_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct superblock_disk* FUNC2 (struct dm_block*) ; 
 scalar_t__ FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dm_block_validator *v, struct dm_block *b,
		    size_t sb_block_size)
{
	struct superblock_disk *sb;
	u32 csum, metadata_version;

	sb = FUNC2(b);

	if (FUNC3(b) != FUNC6(sb->blocknr)) {
		FUNC0("Superblock check failed: blocknr %llu, expected %llu",
		      FUNC6(sb->blocknr),
		      (unsigned long long)FUNC3(b));
		return -ENOTBLK;
	}

	if (FUNC6(sb->magic) != SUPERBLOCK_MAGIC) {
		FUNC0("Superblock check failed: magic %llu, expected %llu",
		      FUNC6(sb->magic),
		      (unsigned long long)SUPERBLOCK_MAGIC);
		return -EILSEQ;
	}

	csum = FUNC4(&sb->flags, sb_block_size - sizeof(__le32),
			      SUPERBLOCK_CSUM_XOR);
	if (sb->csum != FUNC1(csum)) {
		FUNC0("Superblock check failed: checksum %u, expected %u",
		      csum, FUNC5(sb->csum));
		return -EILSEQ;
	}

	/* Check metadata version */
	metadata_version = FUNC5(sb->version);
	if (metadata_version < DM_CLONE_MIN_METADATA_VERSION ||
	    metadata_version > DM_CLONE_MAX_METADATA_VERSION) {
		FUNC0("Clone metadata version %u found, but only versions between %u and %u supported.",
		      metadata_version, DM_CLONE_MIN_METADATA_VERSION,
		      DM_CLONE_MAX_METADATA_VERSION);
		return -EINVAL;
	}

	return 0;
}