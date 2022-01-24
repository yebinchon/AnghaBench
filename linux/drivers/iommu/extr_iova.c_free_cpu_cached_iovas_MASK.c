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
struct iova_rcache {int /*<<< orphan*/  cpu_rcaches; } ;
struct iova_domain {struct iova_rcache* rcaches; } ;
struct iova_cpu_rcache {int /*<<< orphan*/  lock; int /*<<< orphan*/  prev; int /*<<< orphan*/  loaded; } ;

/* Variables and functions */
 int IOVA_RANGE_CACHE_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iova_domain*) ; 
 struct iova_cpu_rcache* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(unsigned int cpu, struct iova_domain *iovad)
{
	struct iova_cpu_rcache *cpu_rcache;
	struct iova_rcache *rcache;
	unsigned long flags;
	int i;

	for (i = 0; i < IOVA_RANGE_CACHE_MAX_SIZE; ++i) {
		rcache = &iovad->rcaches[i];
		cpu_rcache = FUNC1(rcache->cpu_rcaches, cpu);
		FUNC2(&cpu_rcache->lock, flags);
		FUNC0(cpu_rcache->loaded, iovad);
		FUNC0(cpu_rcache->prev, iovad);
		FUNC3(&cpu_rcache->lock, flags);
	}
}