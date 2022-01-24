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
struct etnaviv_perfmon_request {unsigned int flags; } ;
struct etnaviv_gpu {int dummy; } ;
struct etnaviv_gem_submit {unsigned int nr_pmrs; int /*<<< orphan*/  exec_state; struct etnaviv_perfmon_request* pmrs; } ;
struct etnaviv_event {struct etnaviv_gem_submit* submit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct etnaviv_gpu*,struct etnaviv_perfmon_request const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct etnaviv_gpu *gpu,
	struct etnaviv_event *event, unsigned int flags)
{
	const struct etnaviv_gem_submit *submit = event->submit;
	unsigned int i;

	for (i = 0; i < submit->nr_pmrs; i++) {
		const struct etnaviv_perfmon_request *pmr = submit->pmrs + i;

		if (pmr->flags == flags)
			FUNC0(gpu, pmr, submit->exec_state);
	}
}