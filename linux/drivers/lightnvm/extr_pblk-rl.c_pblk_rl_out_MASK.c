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
struct pblk_rl {int /*<<< orphan*/  rb_gc_cnt; int /*<<< orphan*/  rb_user_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

void FUNC1(struct pblk_rl *rl, int nr_user, int nr_gc)
{
	FUNC0(nr_user, &rl->rb_user_cnt);
	FUNC0(nr_gc, &rl->rb_gc_cnt);
}