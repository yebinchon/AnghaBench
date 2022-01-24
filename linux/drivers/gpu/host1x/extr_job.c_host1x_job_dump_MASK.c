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
struct host1x_job {int /*<<< orphan*/  num_unpins; int /*<<< orphan*/  num_slots; int /*<<< orphan*/  timeout; int /*<<< orphan*/  first_get; int /*<<< orphan*/  syncpt_end; int /*<<< orphan*/  syncpt_id; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 

void FUNC1(struct device *dev, struct host1x_job *job)
{
	FUNC0(dev, "    SYNCPT_ID   %d\n", job->syncpt_id);
	FUNC0(dev, "    SYNCPT_VAL  %d\n", job->syncpt_end);
	FUNC0(dev, "    FIRST_GET   0x%x\n", job->first_get);
	FUNC0(dev, "    TIMEOUT     %d\n", job->timeout);
	FUNC0(dev, "    NUM_SLOTS   %d\n", job->num_slots);
	FUNC0(dev, "    NUM_HANDLES %d\n", job->num_unpins);
}