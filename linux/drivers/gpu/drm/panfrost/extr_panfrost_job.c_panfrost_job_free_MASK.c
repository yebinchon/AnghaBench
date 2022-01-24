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
struct panfrost_job {int dummy; } ;
struct drm_sched_job {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC1 (struct panfrost_job*) ; 
 struct panfrost_job* FUNC2 (struct drm_sched_job*) ; 

__attribute__((used)) static void FUNC3(struct drm_sched_job *sched_job)
{
	struct panfrost_job *job = FUNC2(sched_job);

	FUNC0(sched_job);

	FUNC1(job);
}