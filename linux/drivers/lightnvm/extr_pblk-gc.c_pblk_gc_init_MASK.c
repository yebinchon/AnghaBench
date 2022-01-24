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
struct pblk_gc {int gc_enabled; void* gc_ts; void* gc_writer_ts; void* gc_reader_ts; void* gc_line_reader_wq; int /*<<< orphan*/  r_list; int /*<<< orphan*/  w_list; int /*<<< orphan*/  gc_sem; int /*<<< orphan*/  r_lock; int /*<<< orphan*/  w_lock; int /*<<< orphan*/  lock; void* gc_reader_wq; int /*<<< orphan*/  pipeline_gc; int /*<<< orphan*/  read_inflight_gc; scalar_t__ w_entries; scalar_t__ gc_forced; scalar_t__ gc_active; int /*<<< orphan*/  gc_timer; } ;
struct pblk {struct pblk_gc gc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GC_TIME_MSECS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (void*) ; 
 int PBLK_GC_MAX_READERS ; 
 int /*<<< orphan*/  PBLK_GC_RQ_QD ; 
 int FUNC2 (void*) ; 
 int WQ_MEM_RECLAIM ; 
 int WQ_UNBOUND ; 
 void* FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ jiffies ; 
 void* FUNC6 (int /*<<< orphan*/ ,struct pblk*,char*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pblk*,char*) ; 
 int /*<<< orphan*/  pblk_gc_reader_ts ; 
 int /*<<< orphan*/  pblk_gc_timer ; 
 int /*<<< orphan*/  pblk_gc_ts ; 
 int /*<<< orphan*/  pblk_gc_writer_ts ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(struct pblk *pblk)
{
	struct pblk_gc *gc = &pblk->gc;
	int ret;

	gc->gc_ts = FUNC6(pblk_gc_ts, pblk, "pblk-gc-ts");
	if (FUNC1(gc->gc_ts)) {
		FUNC10(pblk, "could not allocate GC main kthread\n");
		return FUNC2(gc->gc_ts);
	}

	gc->gc_writer_ts = FUNC6(pblk_gc_writer_ts, pblk,
							"pblk-gc-writer-ts");
	if (FUNC1(gc->gc_writer_ts)) {
		FUNC10(pblk, "could not allocate GC writer kthread\n");
		ret = FUNC2(gc->gc_writer_ts);
		goto fail_free_main_kthread;
	}

	gc->gc_reader_ts = FUNC6(pblk_gc_reader_ts, pblk,
							"pblk-gc-reader-ts");
	if (FUNC1(gc->gc_reader_ts)) {
		FUNC10(pblk, "could not allocate GC reader kthread\n");
		ret = FUNC2(gc->gc_reader_ts);
		goto fail_free_writer_kthread;
	}

	FUNC13(&gc->gc_timer, pblk_gc_timer, 0);
	FUNC8(&gc->gc_timer, jiffies + FUNC9(GC_TIME_MSECS));

	gc->gc_active = 0;
	gc->gc_forced = 0;
	gc->gc_enabled = 1;
	gc->w_entries = 0;
	FUNC4(&gc->read_inflight_gc, 0);
	FUNC4(&gc->pipeline_gc, 0);

	/* Workqueue that reads valid sectors from a line and submit them to the
	 * GC writer to be recycled.
	 */
	gc->gc_line_reader_wq = FUNC3("pblk-gc-line-reader-wq",
			WQ_MEM_RECLAIM | WQ_UNBOUND, PBLK_GC_MAX_READERS);
	if (!gc->gc_line_reader_wq) {
		FUNC10(pblk, "could not allocate GC line reader workqueue\n");
		ret = -ENOMEM;
		goto fail_free_reader_kthread;
	}

	/* Workqueue that prepare lines for GC */
	gc->gc_reader_wq = FUNC3("pblk-gc-line_wq",
					WQ_MEM_RECLAIM | WQ_UNBOUND, 1);
	if (!gc->gc_reader_wq) {
		FUNC10(pblk, "could not allocate GC reader workqueue\n");
		ret = -ENOMEM;
		goto fail_free_reader_line_wq;
	}

	FUNC12(&gc->lock);
	FUNC12(&gc->w_lock);
	FUNC12(&gc->r_lock);

	FUNC11(&gc->gc_sem, PBLK_GC_RQ_QD);

	FUNC0(&gc->w_list);
	FUNC0(&gc->r_list);

	return 0;

fail_free_reader_line_wq:
	FUNC5(gc->gc_line_reader_wq);
fail_free_reader_kthread:
	FUNC7(gc->gc_reader_ts);
fail_free_writer_kthread:
	FUNC7(gc->gc_writer_ts);
fail_free_main_kthread:
	FUNC7(gc->gc_ts);

	return ret;
}