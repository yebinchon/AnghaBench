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
struct cache_disk_superblock {int /*<<< orphan*/  flags; int /*<<< orphan*/  csum; int /*<<< orphan*/  blocknr; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  SUPERBLOCK_CSUM_XOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cache_disk_superblock* FUNC2 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dm_block_validator *v,
				 struct dm_block *b,
				 size_t sb_block_size)
{
	struct cache_disk_superblock *disk_super = FUNC2(b);

	disk_super->blocknr = FUNC1(FUNC3(b));
	disk_super->csum = FUNC0(FUNC4(&disk_super->flags,
						      sb_block_size - sizeof(__le32),
						      SUPERBLOCK_CSUM_XOR));
}