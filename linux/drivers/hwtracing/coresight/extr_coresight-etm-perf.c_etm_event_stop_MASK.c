#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct perf_output_handle {struct perf_event* event; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct perf_event {TYPE_1__ hw; } ;
struct list_head {int dummy; } ;
struct etm_event_data {int /*<<< orphan*/  snk_config; } ;
struct coresight_device {int dummy; } ;
struct TYPE_6__ {unsigned long (* update_buffer ) (struct coresight_device*,struct perf_output_handle*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* disable ) (struct coresight_device*,struct perf_event*) ;} ;

/* Variables and functions */
 int PERF_EF_UPDATE ; 
 scalar_t__ PERF_HES_STOPPED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 struct coresight_device* FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  csdev_src ; 
 int /*<<< orphan*/  ctx_handle ; 
 struct list_head* FUNC3 (struct etm_event_data*,int) ; 
 struct coresight_device* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_output_handle*,unsigned long) ; 
 struct etm_event_data* FUNC6 (struct perf_output_handle*) ; 
 TYPE_3__* FUNC7 (struct coresight_device*) ; 
 int FUNC8 () ; 
 TYPE_2__* FUNC9 (struct coresight_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct coresight_device*,struct perf_event*) ; 
 unsigned long FUNC11 (struct coresight_device*,struct perf_output_handle*,int /*<<< orphan*/ ) ; 
 struct perf_output_handle* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct perf_event *event, int mode)
{
	int cpu = FUNC8();
	unsigned long size;
	struct coresight_device *sink, *csdev = FUNC4(csdev_src, cpu);
	struct perf_output_handle *handle = FUNC12(&ctx_handle);
	struct etm_event_data *event_data = FUNC6(handle);
	struct list_head *path;

	if (event->hw.state == PERF_HES_STOPPED)
		return;

	if (!csdev)
		return;

	path = FUNC3(event_data, cpu);
	if (!path)
		return;

	sink = FUNC2(path);
	if (!sink)
		return;

	/* stop tracer */
	FUNC9(csdev)->disable(csdev, event);

	/* tell the core */
	event->hw.state = PERF_HES_STOPPED;

	if (mode & PERF_EF_UPDATE) {
		if (FUNC0(handle->event != event))
			return;

		/* update trace information */
		if (!FUNC7(sink)->update_buffer)
			return;

		size = FUNC7(sink)->update_buffer(sink, handle,
					      event_data->snk_config);
		FUNC5(handle, size);
	}

	/* Disabling the path make its elements available to other sessions */
	FUNC1(path);
}