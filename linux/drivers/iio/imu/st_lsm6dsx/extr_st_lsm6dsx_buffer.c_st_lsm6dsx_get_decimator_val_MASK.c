#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ decimator; int val; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* st_lsm6dsx_decimator_table ; 

__attribute__((used)) static int FUNC1(u8 val)
{
	const int max_size = FUNC0(st_lsm6dsx_decimator_table);
	int i;

	for (i = 0; i < max_size; i++)
		if (st_lsm6dsx_decimator_table[i].decimator == val)
			break;

	return i == max_size ? 0 : st_lsm6dsx_decimator_table[i].val;
}