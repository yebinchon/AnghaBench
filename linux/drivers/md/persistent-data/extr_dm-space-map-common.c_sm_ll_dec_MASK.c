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
struct ll_disk {int dummy; } ;
typedef  enum allocation_event { ____Placeholder_allocation_event } allocation_event ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  dec_ref_count ; 
 int FUNC0 (struct ll_disk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

int FUNC1(struct ll_disk *ll, dm_block_t b, enum allocation_event *ev)
{
	return FUNC0(ll, b, dec_ref_count, NULL, ev);
}