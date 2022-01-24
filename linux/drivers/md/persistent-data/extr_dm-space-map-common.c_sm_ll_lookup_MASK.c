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
typedef  int uint32_t ;
struct ll_disk {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int FUNC0 (struct ll_disk*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct ll_disk*,int /*<<< orphan*/ ,int*) ; 

int FUNC2(struct ll_disk *ll, dm_block_t b, uint32_t *result)
{
	int r = FUNC1(ll, b, result);

	if (r)
		return r;

	if (*result != 3)
		return r;

	return FUNC0(ll, b, result);
}