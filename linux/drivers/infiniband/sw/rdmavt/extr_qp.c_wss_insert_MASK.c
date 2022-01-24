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
typedef  int u32 ;
struct rvt_wss {unsigned long pages_mask; int /*<<< orphan*/  total_count; int /*<<< orphan*/ * entries; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_wss*) ; 

__attribute__((used)) static void FUNC3(struct rvt_wss *wss, void *address)
{
	u32 page = ((unsigned long)address >> PAGE_SHIFT) & wss->pages_mask;
	u32 entry = page / BITS_PER_LONG; /* assumes this ends up a shift */
	u32 nr = page & (BITS_PER_LONG - 1);

	if (!FUNC1(nr, &wss->entries[entry]))
		FUNC0(&wss->total_count);

	FUNC2(wss);
}