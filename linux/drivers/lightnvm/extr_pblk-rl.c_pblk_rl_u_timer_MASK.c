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
struct timer_list {int dummy; } ;
struct pblk_rl {int /*<<< orphan*/  rb_user_active; } ;

/* Variables and functions */
 struct pblk_rl* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct pblk_rl* rl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u_timer ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct pblk_rl *rl = FUNC0(rl, t, u_timer);

	/* Release user I/O state. Protect from GC */
	FUNC1(&rl->rb_user_active, 0);
}