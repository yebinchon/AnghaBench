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
struct panfrost_job_slot {TYPE_1__* queue; int /*<<< orphan*/  job_lock; } ;
struct panfrost_device {int /*<<< orphan*/  dev; struct panfrost_job_slot* js; } ;
struct TYPE_2__ {int /*<<< orphan*/  sched; int /*<<< orphan*/  fence_context; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int NUM_JOB_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct panfrost_job_slot* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct panfrost_device*) ; 
 int /*<<< orphan*/  panfrost_job_irq_handler ; 
 int /*<<< orphan*/  panfrost_sched_ops ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct panfrost_device *pfdev)
{
	struct panfrost_job_slot *js;
	int ret, j, irq;

	pfdev->js = js = FUNC1(pfdev->dev, sizeof(*js), GFP_KERNEL);
	if (!js)
		return -ENOMEM;

	FUNC9(&js->job_lock);

	irq = FUNC8(FUNC10(pfdev->dev), "job");
	if (irq <= 0)
		return -ENODEV;

	ret = FUNC2(pfdev->dev, irq, panfrost_job_irq_handler,
			       IRQF_SHARED, "job", pfdev);
	if (ret) {
		FUNC0(pfdev->dev, "failed to request job irq");
		return ret;
	}

	for (j = 0; j < NUM_JOB_SLOTS; j++) {
		js->queue[j].fence_context = FUNC3(1);

		ret = FUNC5(&js->queue[j].sched,
				     &panfrost_sched_ops,
				     1, 0, FUNC6(500),
				     "pan_js");
		if (ret) {
			FUNC0(pfdev->dev, "Failed to create scheduler: %d.", ret);
			goto err_sched;
		}
	}

	FUNC7(pfdev);

	return 0;

err_sched:
	for (j--; j >= 0; j--)
		FUNC4(&js->queue[j].sched);

	return ret;
}