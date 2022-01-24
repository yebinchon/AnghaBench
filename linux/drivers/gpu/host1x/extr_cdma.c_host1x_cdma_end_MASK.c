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
struct host1x_job {TYPE_1__* channel; scalar_t__ timeout; int /*<<< orphan*/  list; int /*<<< orphan*/  num_slots; int /*<<< orphan*/  first_get; } ;
struct host1x_cdma {int /*<<< orphan*/  lock; int /*<<< orphan*/  sync_queue; int /*<<< orphan*/  slots_used; int /*<<< orphan*/  first_get; } ;
struct host1x {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct host1x_cdma*,struct host1x_job*) ; 
 struct host1x* FUNC1 (struct host1x_cdma*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct host1x*,struct host1x_cdma*) ; 
 int /*<<< orphan*/  FUNC4 (struct host1x_job*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct host1x_cdma *cdma,
		     struct host1x_job *job)
{
	struct host1x *host1x = FUNC1(cdma);
	bool idle = FUNC6(&cdma->sync_queue);

	FUNC3(host1x, cdma);

	job->first_get = cdma->first_get;
	job->num_slots = cdma->slots_used;
	FUNC4(job);
	FUNC5(&job->list, &cdma->sync_queue);

	/* start timer on idle -> active transitions */
	if (job->timeout && idle)
		FUNC0(cdma, job);

	FUNC8(FUNC2(job->channel->dev));
	FUNC7(&cdma->lock);
}