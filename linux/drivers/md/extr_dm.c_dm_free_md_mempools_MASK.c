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
struct dm_md_mempools {int /*<<< orphan*/  io_bs; int /*<<< orphan*/  bs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_md_mempools*) ; 

void FUNC2(struct dm_md_mempools *pools)
{
	if (!pools)
		return;

	FUNC0(&pools->bs);
	FUNC0(&pools->io_bs);

	FUNC1(pools);
}