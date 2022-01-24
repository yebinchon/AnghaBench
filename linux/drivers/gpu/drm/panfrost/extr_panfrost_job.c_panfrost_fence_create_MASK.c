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
struct dma_fence {int dummy; } ;
struct panfrost_fence {int queue; struct dma_fence base; scalar_t__ seqno; int /*<<< orphan*/  dev; } ;
struct panfrost_device {int /*<<< orphan*/  ddev; struct panfrost_job_slot* js; } ;
struct TYPE_2__ {int /*<<< orphan*/  fence_context; scalar_t__ emit_seqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dma_fence* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct panfrost_fence* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  panfrost_fence_ops ; 

__attribute__((used)) static struct dma_fence *FUNC3(struct panfrost_device *pfdev, int js_num)
{
	struct panfrost_fence *fence;
	struct panfrost_job_slot *js = pfdev->js;

	fence = FUNC2(sizeof(*fence), GFP_KERNEL);
	if (!fence)
		return FUNC0(-ENOMEM);

	fence->dev = pfdev->ddev;
	fence->queue = js_num;
	fence->seqno = ++js->queue[js_num].emit_seqno;
	FUNC1(&fence->base, &panfrost_fence_ops, &js->job_lock,
		       js->queue[js_num].fence_context, fence->seqno);

	return &fence->base;
}