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
struct pblk_gc {int /*<<< orphan*/  gc_timer; int /*<<< orphan*/  gc_ts; scalar_t__ gc_enabled; } ;
struct pblk {struct pblk_gc gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC_TIME_MSECS ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk_gc*) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk_gc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pblk *pblk)
{
	struct pblk_gc *gc = &pblk->gc;

	FUNC3(gc);
	FUNC2(gc);

	/* If we're shutting down GC, let's not start it up again */
	if (gc->gc_enabled) {
		FUNC4(gc->gc_ts);
		FUNC0(&gc->gc_timer,
			  jiffies + FUNC1(GC_TIME_MSECS));
	}
}