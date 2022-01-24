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
typedef  int u32 ;
struct panfrost_job {int /*<<< orphan*/  done_fence; TYPE_2__* file_priv; } ;
struct panfrost_device {TYPE_3__* js; int /*<<< orphan*/  dev; struct panfrost_job** jobs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  job_lock; TYPE_1__* queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  mmu; } ;
struct TYPE_4__ {int /*<<< orphan*/  sched; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  JOB_INT_CLEAR ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  JOB_INT_STAT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int JS_COMMAND_NOP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct panfrost_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct panfrost_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct panfrost_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct panfrost_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct panfrost_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC20(int irq, void *data)
{
	struct panfrost_device *pfdev = data;
	u32 status = FUNC11(pfdev, JOB_INT_STAT);
	int j;

	FUNC7(pfdev->dev, "jobslot irq status=%x\n", status);

	if (!status)
		return IRQ_NONE;

	FUNC16(pfdev->dev);

	for (j = 0; status; j++) {
		u32 mask = FUNC6(j);

		if (!(status & mask))
			continue;

		FUNC12(pfdev, JOB_INT_CLEAR, mask);

		if (status & FUNC1(j)) {
			FUNC12(pfdev, FUNC2(j), JS_COMMAND_NOP);

			FUNC8(pfdev->dev, "js fault, js=%d, status=%s, head=0x%x, tail=0x%x",
				j,
				FUNC14(pfdev, FUNC11(pfdev, FUNC4(j))),
				FUNC11(pfdev, FUNC3(j)),
				FUNC11(pfdev, FUNC5(j)));

			FUNC10(&pfdev->js->queue[j].sched);
		}

		if (status & FUNC0(j)) {
			struct panfrost_job *job;

			FUNC18(&pfdev->js->job_lock);
			job = pfdev->jobs[j];
			/* Only NULL if job timeout occurred */
			if (job) {
				pfdev->jobs[j] = NULL;

				FUNC15(pfdev, &job->file_priv->mmu);
				FUNC13(pfdev, j);

				FUNC9(job->done_fence);
				FUNC17(pfdev->dev);
			}
			FUNC19(&pfdev->js->job_lock);
		}

		status &= ~mask;
	}

	return IRQ_HANDLED;
}