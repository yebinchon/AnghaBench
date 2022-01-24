#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_output_handle {int dummy; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct perf_event {TYPE_1__ hw; } ;
struct list_head {int dummy; } ;
struct etm_event_data {int dummy; } ;
struct coresight_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ (* enable ) (struct coresight_device*,struct perf_event*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CS_MODE_PERF ; 
 int /*<<< orphan*/  PERF_AUX_FLAG_TRUNCATED ; 
 scalar_t__ PERF_HES_STOPPED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 scalar_t__ FUNC2 (struct list_head*,int /*<<< orphan*/ ,struct perf_output_handle*) ; 
 struct coresight_device* FUNC3 (struct list_head*) ; 
 int /*<<< orphan*/  csdev_src ; 
 int /*<<< orphan*/  ctx_handle ; 
 struct list_head* FUNC4 (struct etm_event_data*,int) ; 
 struct coresight_device* FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct etm_event_data* FUNC6 (struct perf_output_handle*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_output_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_output_handle*,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 TYPE_2__* FUNC10 (struct coresight_device*) ; 
 scalar_t__ FUNC11 (struct coresight_device*,struct perf_event*,int /*<<< orphan*/ ) ; 
 struct perf_output_handle* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct perf_event *event, int flags)
{
	int cpu = FUNC9();
	struct etm_event_data *event_data;
	struct perf_output_handle *handle = FUNC12(&ctx_handle);
	struct coresight_device *sink, *csdev = FUNC5(csdev_src, cpu);
	struct list_head *path;

	if (!csdev)
		goto fail;

	/*
	 * Deal with the ring buffer API and get a handle on the
	 * session's information.
	 */
	event_data = FUNC6(handle, event);
	if (!event_data)
		goto fail;

	path = FUNC4(event_data, cpu);
	/* We need a sink, no need to continue without one */
	sink = FUNC3(path);
	if (FUNC0(!sink))
		goto fail_end_stop;

	/* Nothing will happen without a path */
	if (FUNC2(path, CS_MODE_PERF, handle))
		goto fail_end_stop;

	/* Tell the perf core the event is alive */
	event->hw.state = 0;

	/* Finally enable the tracer */
	if (FUNC10(csdev)->enable(csdev, event, CS_MODE_PERF))
		goto fail_disable_path;

out:
	return;

fail_disable_path:
	FUNC1(path);
fail_end_stop:
	FUNC8(handle, PERF_AUX_FLAG_TRUNCATED);
	FUNC7(handle, 0);
fail:
	event->hw.state = PERF_HES_STOPPED;
	goto out;
}