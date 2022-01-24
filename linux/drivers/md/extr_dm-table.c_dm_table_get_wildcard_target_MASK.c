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
struct dm_target {int /*<<< orphan*/  type; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct dm_table*) ; 
 struct dm_target* FUNC1 (struct dm_table*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

struct dm_target *FUNC3(struct dm_table *t)
{
	struct dm_target *ti;
	unsigned i;

	for (i = 0; i < FUNC0(t); i++) {
		ti = FUNC1(t, i);
		if (FUNC2(ti->type))
			return ti;
	}

	return NULL;
}