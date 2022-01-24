#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct pblk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gc_timer; } ;

/* Variables and functions */
 struct pblk* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 TYPE_1__ gc ; 
 struct pblk* pblk ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*) ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct pblk *pblk = FUNC0(pblk, t, gc.gc_timer);

	FUNC1(pblk);
}