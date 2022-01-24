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
struct writeback_list {scalar_t__ size; } ;
struct dm_writecache {scalar_t__ max_writeback_jobs; scalar_t__ writeback_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_writecache*) ; 

__attribute__((used)) static void FUNC6(struct dm_writecache *wc, struct writeback_list *wbl)
{
	if (FUNC2(wc->max_writeback_jobs)) {
		if (FUNC0(wc->writeback_size) - wbl->size >= wc->max_writeback_jobs) {
			FUNC3(wc);
			while (wc->writeback_size - wbl->size >= wc->max_writeback_jobs)
				FUNC5(wc);
			FUNC4(wc);
		}
	}
	FUNC1();
}