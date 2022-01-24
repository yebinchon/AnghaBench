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
struct perf_event {int /*<<< orphan*/  owner; } ;
struct etr_buf {int /*<<< orphan*/  refcount; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct etr_buf* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct etr_buf*) ; 
 struct etr_buf* FUNC2 (struct tmc_drvdata*,struct perf_event*,int,void**,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct etr_buf*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct etr_buf* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct etr_buf*) ; 

__attribute__((used)) static struct etr_buf *
FUNC10(struct tmc_drvdata *drvdata,
			  struct perf_event *event, int nr_pages,
			  void **pages, bool snapshot)
{
	int ret;
	pid_t pid = FUNC8(event->owner);
	struct etr_buf *etr_buf;

retry:
	/*
	 * An etr_perf_buffer is associated with an event and holds a reference
	 * to the AUX ring buffer that was created for that event.  In CPU-wide
	 * N:1 mode multiple events (one per CPU), each with its own AUX ring
	 * buffer, share a sink.  As such an etr_perf_buffer is created for each
	 * event but a single etr_buf associated with the ETR is shared between
	 * them.  The last event in a trace session will copy the content of the
	 * etr_buf to its AUX ring buffer.  Ring buffer associated to other
	 * events are simply not used an freed as events are destoyed.  We still
	 * need to allocate a ring buffer for each event since we don't know
	 * which event will be last.
	 */

	/*
	 * The first thing to do here is check if an etr_buf has already been
	 * allocated for this session.  If so it is shared with this event,
	 * otherwise it is created.
	 */
	FUNC5(&drvdata->idr_mutex);
	etr_buf = FUNC4(&drvdata->idr, pid);
	if (etr_buf) {
		FUNC7(&etr_buf->refcount);
		FUNC6(&drvdata->idr_mutex);
		return etr_buf;
	}

	/* If we made it here no buffer has been allocated, do so now. */
	FUNC6(&drvdata->idr_mutex);

	etr_buf = FUNC2(drvdata, event, nr_pages, pages, snapshot);
	if (FUNC1(etr_buf))
		return etr_buf;

	/* Now that we have a buffer, add it to the IDR. */
	FUNC5(&drvdata->idr_mutex);
	ret = FUNC3(&drvdata->idr, etr_buf, pid, pid + 1, GFP_KERNEL);
	FUNC6(&drvdata->idr_mutex);

	/* Another event with this session ID has allocated this buffer. */
	if (ret == -ENOSPC) {
		FUNC9(etr_buf);
		goto retry;
	}

	/* The IDR can't allocate room for a new session, abandon ship. */
	if (ret == -ENOMEM) {
		FUNC9(etr_buf);
		return FUNC0(ret);
	}


	return etr_buf;
}