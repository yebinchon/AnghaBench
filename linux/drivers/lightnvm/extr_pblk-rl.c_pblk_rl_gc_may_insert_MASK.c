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
struct pblk_rl {int rb_gc_max; int /*<<< orphan*/  rb_user_active; int /*<<< orphan*/  rb_gc_cnt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct pblk_rl *rl, int nr_entries)
{
	int rb_gc_cnt = FUNC1(&rl->rb_gc_cnt);
	int rb_user_active;

	/* If there is no user I/O let GC take over space on the write buffer */
	rb_user_active = FUNC0(rl->rb_user_active);
	return (!(rb_gc_cnt >= rl->rb_gc_max && rb_user_active));
}