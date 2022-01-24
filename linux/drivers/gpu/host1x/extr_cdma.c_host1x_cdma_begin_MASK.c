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
struct host1x_job {TYPE_3__* channel; int /*<<< orphan*/  syncpt_id; scalar_t__ timeout; } ;
struct TYPE_5__ {int /*<<< orphan*/  pos; } ;
struct TYPE_4__ {int /*<<< orphan*/  initialized; } ;
struct host1x_cdma {TYPE_2__ push_buffer; int /*<<< orphan*/  first_get; scalar_t__ slots_used; scalar_t__ slots_free; int /*<<< orphan*/  running; int /*<<< orphan*/  lock; TYPE_1__ timeout; } ;
struct host1x {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct host1x* FUNC0 (struct host1x_cdma*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct host1x*,struct host1x_cdma*) ; 
 int FUNC3 (struct host1x*,struct host1x_cdma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct host1x_cdma *cdma, struct host1x_job *job)
{
	struct host1x *host1x = FUNC0(cdma);

	FUNC4(&cdma->lock);

	if (job->timeout) {
		/* init state on first submit with timeout value */
		if (!cdma->timeout.initialized) {
			int err;

			err = FUNC3(host1x, cdma,
							  job->syncpt_id);
			if (err) {
				FUNC5(&cdma->lock);
				return err;
			}
		}
	}

	if (!cdma->running)
		FUNC2(host1x, cdma);

	cdma->slots_free = 0;
	cdma->slots_used = 0;
	cdma->first_get = cdma->push_buffer.pos;

	FUNC6(FUNC1(job->channel->dev));
	return 0;
}