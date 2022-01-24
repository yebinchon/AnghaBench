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
typedef  unsigned long u32 ;
struct tmc_drvdata {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  base; struct etr_buf* perf_buf; } ;
struct perf_output_handle {unsigned long size; unsigned long head; } ;
struct etr_perf_buffer {scalar_t__ snapshot; struct etr_buf* etr_buf; } ;
struct etr_buf {int full; unsigned long offset; unsigned long len; unsigned long size; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {int /*<<< orphan*/  refcnt; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERF_AUX_FLAG_TRUNCATED ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct tmc_drvdata* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_output_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct etr_buf*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct etr_perf_buffer*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct tmc_drvdata*) ; 
 unsigned long FUNC11 (struct tmc_drvdata*) ; 
 int /*<<< orphan*/  FUNC12 (struct tmc_drvdata*) ; 

__attribute__((used)) static unsigned long
FUNC13(struct coresight_device *csdev,
		      struct perf_output_handle *handle,
		      void *config)
{
	bool lost = false;
	unsigned long flags, offset, size = 0;
	struct tmc_drvdata *drvdata = FUNC4(csdev->dev.parent);
	struct etr_perf_buffer *etr_perf = config;
	struct etr_buf *etr_buf = etr_perf->etr_buf;

	FUNC6(&drvdata->spinlock, flags);

	/* Don't do anything if another tracer is using this sink */
	if (FUNC3(csdev->refcnt) != 1) {
		FUNC7(&drvdata->spinlock, flags);
		goto out;
	}

	if (FUNC2(drvdata->perf_buf != etr_buf)) {
		lost = true;
		FUNC7(&drvdata->spinlock, flags);
		goto out;
	}

	FUNC1(drvdata->base);

	FUNC10(drvdata);
	FUNC12(drvdata);

	FUNC0(drvdata->base);
	FUNC7(&drvdata->spinlock, flags);

	lost = etr_buf->full;
	offset = etr_buf->offset;
	size = etr_buf->len;

	/*
	 * The ETR buffer may be bigger than the space available in the
	 * perf ring buffer (handle->size).  If so advance the offset so that we
	 * get the latest trace data.  In snapshot mode none of that matters
	 * since we are expected to clobber stale data in favour of the latest
	 * traces.
	 */
	if (!etr_perf->snapshot && size > handle->size) {
		u32 mask = FUNC11(drvdata);

		/*
		 * Make sure the new size is aligned in accordance with the
		 * requirement explained in function tmc_get_memwidth_mask().
		 */
		size = handle->size & mask;
		offset = etr_buf->offset + etr_buf->len - size;

		if (offset >= etr_buf->size)
			offset -= etr_buf->size;
		lost = true;
	}

	/* Insert barrier packets at the beginning, if there was an overflow */
	if (lost)
		FUNC8(etr_buf, etr_buf->offset);
	FUNC9(etr_perf, offset, size);

	/*
	 * In snapshot mode we simply increment the head by the number of byte
	 * that were written.  User space function  cs_etm_find_snapshot() will
	 * figure out how many bytes to get from the AUX buffer based on the
	 * position of the head.
	 */
	if (etr_perf->snapshot)
		handle->head += size;
out:
	/*
	 * Don't set the TRUNCATED flag in snapshot mode because 1) the
	 * captured buffer is expected to be truncated and 2) a full buffer
	 * prevents the event from being re-enabled by the perf core,
	 * resulting in stale data being send to user space.
	 */
	if (!etr_perf->snapshot && lost)
		FUNC5(handle, PERF_AUX_FLAG_TRUNCATED);
	return size;
}