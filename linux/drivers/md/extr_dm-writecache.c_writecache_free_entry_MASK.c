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
struct dm_writecache {int /*<<< orphan*/  freelist_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_writecache*,struct wc_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_writecache*,struct wc_entry*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_writecache*,struct wc_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_writecache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_writecache*,struct wc_entry*) ; 

__attribute__((used)) static void FUNC8(struct dm_writecache *wc, struct wc_entry *e)
{
	FUNC7(wc, e);
	FUNC5(wc, e);
	FUNC0(wc, e);
	FUNC6(wc, FUNC1(wc, e), sizeof(struct wc_memory_entry));
	if (FUNC2(FUNC3(&wc->freelist_wait)))
		FUNC4(&wc->freelist_wait);
}