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
struct etnaviv_gem_submit {int dummy; } ;
struct drm_sched_job {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_gem_submit*) ; 
 struct etnaviv_gem_submit* FUNC2 (struct drm_sched_job*) ; 

__attribute__((used)) static void FUNC3(struct drm_sched_job *sched_job)
{
	struct etnaviv_gem_submit *submit = FUNC2(sched_job);

	FUNC0(sched_job);

	FUNC1(submit);
}