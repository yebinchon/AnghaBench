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
struct dm_writecache {int /*<<< orphan*/  dirty_bitmap; scalar_t__ memory_map; } ;

/* Variables and functions */
 int BITMAP_GRANULARITY ; 
 int /*<<< orphan*/  FUNC0 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dm_writecache *wc, void *ptr, size_t size)
{
	if (!FUNC0(wc))
		FUNC1(((char *)ptr - (char *)wc->memory_map) / BITMAP_GRANULARITY,
			  wc->dirty_bitmap);
}