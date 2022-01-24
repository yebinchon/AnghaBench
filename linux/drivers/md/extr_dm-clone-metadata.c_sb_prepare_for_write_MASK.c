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
struct superblock_disk {int /*<<< orphan*/  csum; int /*<<< orphan*/  flags; int /*<<< orphan*/  blocknr; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  SUPERBLOCK_CSUM_XOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct superblock_disk* FUNC2 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dm_block_validator *v,
				 struct dm_block *b, size_t sb_block_size)
{
	struct superblock_disk *sb;
	u32 csum;

	sb = FUNC2(b);
	sb->blocknr = FUNC1(FUNC3(b));

	csum = FUNC4(&sb->flags, sb_block_size - sizeof(__le32),
			      SUPERBLOCK_CSUM_XOR);
	sb->csum = FUNC0(csum);
}