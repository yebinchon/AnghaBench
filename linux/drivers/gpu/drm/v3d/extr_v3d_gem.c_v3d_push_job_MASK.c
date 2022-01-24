#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* s_fence; } ;
struct v3d_job {TYPE_2__ base; int /*<<< orphan*/  refcount; int /*<<< orphan*/  done_fence; } ;
struct v3d_file_priv {int /*<<< orphan*/ * sched_entity; } ;
typedef  enum v3d_queue { ____Placeholder_v3d_queue } v3d_queue ;
struct TYPE_4__ {int /*<<< orphan*/  finished; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,struct v3d_file_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct v3d_file_priv *v3d_priv,
	     struct v3d_job *job, enum v3d_queue queue)
{
	int ret;

	ret = FUNC2(&job->base, &v3d_priv->sched_entity[queue],
				 v3d_priv);
	if (ret)
		return ret;

	job->done_fence = FUNC0(&job->base.s_fence->finished);

	/* put by scheduler job completion */
	FUNC3(&job->refcount);

	FUNC1(&job->base, &v3d_priv->sched_entity[queue]);

	return 0;
}