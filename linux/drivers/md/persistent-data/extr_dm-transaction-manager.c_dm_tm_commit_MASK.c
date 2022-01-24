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
struct dm_transaction_manager {int /*<<< orphan*/  bm; scalar_t__ is_clone; } ;
struct dm_block {int dummy; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_transaction_manager*) ; 

int FUNC3(struct dm_transaction_manager *tm, struct dm_block *root)
{
	if (tm->is_clone)
		return -EWOULDBLOCK;

	FUNC2(tm);
	FUNC1(root);

	return FUNC0(tm->bm);
}