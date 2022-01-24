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
struct ll_disk {int /*<<< orphan*/  tm; int /*<<< orphan*/  bitmap_root; } ;
struct dm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int /*<<< orphan*/  index_validator ; 

__attribute__((used)) static int FUNC3(struct ll_disk *ll)
{
	int r;
	struct dm_block *b;

	r = FUNC1(ll->tm, &index_validator, &b);
	if (r < 0)
		return r;

	ll->bitmap_root = FUNC0(b);

	FUNC2(ll->tm, b);

	return 0;
}