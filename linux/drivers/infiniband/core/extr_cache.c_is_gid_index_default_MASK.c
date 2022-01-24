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
struct ib_gid_table {int default_gid_indices; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 

__attribute__((used)) static bool FUNC1(const struct ib_gid_table *table,
				 unsigned int index)
{
	return index < 32 && (FUNC0(index) & table->default_gid_indices);
}