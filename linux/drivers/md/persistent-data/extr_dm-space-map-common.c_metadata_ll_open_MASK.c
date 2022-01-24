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
struct ll_disk {int /*<<< orphan*/  tm; int /*<<< orphan*/  mi_le; int /*<<< orphan*/  bitmap_root; } ;
struct dm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int /*<<< orphan*/  index_validator ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ll_disk *ll)
{
	int r;
	struct dm_block *block;

	r = FUNC1(ll->tm, ll->bitmap_root,
			    &index_validator, &block);
	if (r)
		return r;

	FUNC3(&ll->mi_le, FUNC0(block), sizeof(ll->mi_le));
	FUNC2(ll->tm, block);

	return 0;
}