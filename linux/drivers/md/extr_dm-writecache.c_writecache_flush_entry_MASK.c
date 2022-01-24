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
struct wc_memory_entry {int dummy; } ;
struct wc_entry {int dummy; } ;
struct dm_writecache {int block_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_writecache*,struct wc_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_writecache*,struct wc_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_writecache*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct dm_writecache *wc, struct wc_entry *e)
{
	FUNC3(wc, FUNC2(wc, e), sizeof(struct wc_memory_entry));
	if (FUNC0(wc))
		FUNC3(wc, FUNC1(wc, e), wc->block_size);
}