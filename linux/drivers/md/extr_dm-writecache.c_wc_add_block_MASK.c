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
struct writeback_struct {int /*<<< orphan*/  bio; struct dm_writecache* wc; } ;
struct wc_entry {int dummy; } ;
struct dm_writecache {unsigned int block_size; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct dm_writecache*,struct wc_entry*) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static bool FUNC5(struct writeback_struct *wb, struct wc_entry *e, gfp_t gfp)
{
	struct dm_writecache *wc = wb->wc;
	unsigned block_size = wc->block_size;
	void *address = FUNC1(wc, e);

	FUNC2(address, block_size);
	return FUNC0(&wb->bio, FUNC3(address),
			    block_size, FUNC4(address)) != 0;
}