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
struct array_block {int /*<<< orphan*/  max_entries; int /*<<< orphan*/  csum; int /*<<< orphan*/  blocknr; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  CSUM_XOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct array_block* FUNC2 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dm_block_validator *v,
					  struct dm_block *b,
					  size_t size_of_block)
{
	struct array_block *bh_le = FUNC2(b);

	bh_le->blocknr = FUNC1(FUNC3(b));
	bh_le->csum = FUNC0(FUNC4(&bh_le->max_entries,
						 size_of_block - sizeof(__le32),
						 CSUM_XOR));
}