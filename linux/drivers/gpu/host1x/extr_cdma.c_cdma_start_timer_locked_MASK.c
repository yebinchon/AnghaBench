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
struct host1x_job {int /*<<< orphan*/  timeout; int /*<<< orphan*/  syncpt_end; int /*<<< orphan*/  syncpt_id; scalar_t__ client; } ;
struct TYPE_2__ {int /*<<< orphan*/  wq; int /*<<< orphan*/  start_ktime; int /*<<< orphan*/  syncpt_val; int /*<<< orphan*/  syncpt; scalar_t__ client; } ;
struct host1x_cdma {TYPE_1__ timeout; } ;
struct host1x {int dummy; } ;

/* Variables and functions */
 struct host1x* FUNC0 (struct host1x_cdma*) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct host1x_cdma *cdma,
				    struct host1x_job *job)
{
	struct host1x *host = FUNC0(cdma);

	if (cdma->timeout.client) {
		/* timer already started */
		return;
	}

	cdma->timeout.client = job->client;
	cdma->timeout.syncpt = FUNC1(host, job->syncpt_id);
	cdma->timeout.syncpt_val = job->syncpt_end;
	cdma->timeout.start_ktime = FUNC2();

	FUNC4(&cdma->timeout.wq,
			      FUNC3(job->timeout));
}