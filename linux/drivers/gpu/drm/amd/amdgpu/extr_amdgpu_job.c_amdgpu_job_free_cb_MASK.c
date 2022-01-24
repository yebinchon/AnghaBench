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
struct drm_sched_job {int /*<<< orphan*/  s_priority; int /*<<< orphan*/  sched; } ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_job {int /*<<< orphan*/  sched_sync; int /*<<< orphan*/  sync; int /*<<< orphan*/  fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_job*) ; 
 struct amdgpu_job* FUNC5 (struct drm_sched_job*) ; 
 struct amdgpu_ring* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_sched_job *s_job)
{
	struct amdgpu_ring *ring = FUNC6(s_job->sched);
	struct amdgpu_job *job = FUNC5(s_job);

	FUNC3(s_job);

	FUNC0(ring, s_job->s_priority);
	FUNC2(job->fence);
	FUNC1(&job->sync);
	FUNC1(&job->sched_sync);
	FUNC4(job);
}