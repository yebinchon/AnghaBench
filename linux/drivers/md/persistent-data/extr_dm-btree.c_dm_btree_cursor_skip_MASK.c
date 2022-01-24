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
typedef  int /*<<< orphan*/  uint32_t ;
struct dm_btree_cursor {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dm_btree_cursor*) ; 

int FUNC1(struct dm_btree_cursor *c, uint32_t count)
{
	int r = 0;

	while (count-- && !r)
		r = FUNC0(c);

	return r;
}