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
struct pblk_gc {scalar_t__ gc_writer_ts; int /*<<< orphan*/  gc_line_reader_wq; int /*<<< orphan*/  gc_reader_wq; scalar_t__ gc_reader_ts; scalar_t__ gc_ts; scalar_t__ gc_active; int /*<<< orphan*/  gc_timer; scalar_t__ gc_enabled; } ;
struct pblk {struct pblk_gc gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct pblk *pblk, bool graceful)
{
	struct pblk_gc *gc = &pblk->gc;

	gc->gc_enabled = 0;
	FUNC0(&gc->gc_timer);
	gc->gc_active = 0;

	if (gc->gc_ts)
		FUNC3(gc->gc_ts);

	if (gc->gc_reader_ts)
		FUNC3(gc->gc_reader_ts);

	if (graceful) {
		FUNC2(gc->gc_reader_wq);
		FUNC2(gc->gc_line_reader_wq);
	}

	FUNC1(gc->gc_reader_wq);
	FUNC1(gc->gc_line_reader_wq);

	if (gc->gc_writer_ts)
		FUNC3(gc->gc_writer_ts);
}