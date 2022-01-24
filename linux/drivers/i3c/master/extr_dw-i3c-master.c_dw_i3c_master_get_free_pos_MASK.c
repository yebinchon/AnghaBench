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
struct dw_i3c_master {int free_pos; scalar_t__ maxdevs; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct dw_i3c_master *master)
{
	if (!(master->free_pos & FUNC0(master->maxdevs - 1, 0)))
		return -ENOSPC;

	return FUNC1(master->free_pos) - 1;
}