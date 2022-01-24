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
struct v3d_job {struct v3d_dev* v3d; } ;
struct v3d_dev {int dummy; } ;
struct drm_sched_job {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 struct v3d_job* FUNC0 (struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC1 (struct v3d_dev*) ; 

__attribute__((used)) static struct dma_fence *
FUNC2(struct drm_sched_job *sched_job)
{
	struct v3d_job *job = FUNC0(sched_job);
	struct v3d_dev *v3d = job->v3d;

	FUNC1(v3d);

	return NULL;
}