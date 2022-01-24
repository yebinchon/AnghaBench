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
struct tmc_drvdata {int /*<<< orphan*/  idr_mutex; int /*<<< orphan*/  idr; } ;
struct etr_perf_buffer {struct etr_buf* etr_buf; int /*<<< orphan*/  pid; struct tmc_drvdata* drvdata; } ;
struct etr_buf {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct etr_buf* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct etr_perf_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct etr_buf*) ; 

__attribute__((used)) static void FUNC7(void *config)
{
	struct etr_perf_buffer *etr_perf = config;
	struct tmc_drvdata *drvdata = etr_perf->drvdata;
	struct etr_buf *buf, *etr_buf = etr_perf->etr_buf;

	if (!etr_buf)
		goto free_etr_perf_buffer;

	FUNC3(&drvdata->idr_mutex);
	/* If we are not the last one to use the buffer, don't touch it. */
	if (!FUNC5(&etr_buf->refcount)) {
		FUNC4(&drvdata->idr_mutex);
		goto free_etr_perf_buffer;
	}

	/* We are the last one, remove from the IDR and free the buffer. */
	buf = FUNC1(&drvdata->idr, etr_perf->pid);
	FUNC4(&drvdata->idr_mutex);

	/*
	 * Something went very wrong if the buffer associated with this ID
	 * is not the same in the IDR.  Leak to avoid use after free.
	 */
	if (buf && FUNC0(buf != etr_buf))
		goto free_etr_perf_buffer;

	FUNC6(etr_perf->etr_buf);

free_etr_perf_buffer:
	FUNC2(etr_perf);
}