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
struct amdgpu_job {int /*<<< orphan*/  sched_sync; int /*<<< orphan*/  sync; int /*<<< orphan*/  fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_job*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_job*) ; 

void FUNC4(struct amdgpu_job *job)
{
	FUNC0(job);

	FUNC2(job->fence);
	FUNC1(&job->sync);
	FUNC1(&job->sched_sync);
	FUNC3(job);
}