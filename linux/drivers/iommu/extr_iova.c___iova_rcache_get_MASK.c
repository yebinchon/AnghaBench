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
struct iova_rcache {size_t depot_size; int /*<<< orphan*/  lock; int /*<<< orphan*/ * depot; int /*<<< orphan*/  cpu_rcaches; } ;
struct iova_cpu_rcache {int /*<<< orphan*/  lock; int /*<<< orphan*/  loaded; int /*<<< orphan*/  prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 struct iova_cpu_rcache* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC9(struct iova_rcache *rcache,
				       unsigned long limit_pfn)
{
	struct iova_cpu_rcache *cpu_rcache;
	unsigned long iova_pfn = 0;
	bool has_pfn = false;
	unsigned long flags;

	cpu_rcache = FUNC3(rcache->cpu_rcaches);
	FUNC5(&cpu_rcache->lock, flags);

	if (!FUNC0(cpu_rcache->loaded)) {
		has_pfn = true;
	} else if (!FUNC0(cpu_rcache->prev)) {
		FUNC8(cpu_rcache->prev, cpu_rcache->loaded);
		has_pfn = true;
	} else {
		FUNC4(&rcache->lock);
		if (rcache->depot_size > 0) {
			FUNC1(cpu_rcache->loaded);
			cpu_rcache->loaded = rcache->depot[--rcache->depot_size];
			has_pfn = true;
		}
		FUNC6(&rcache->lock);
	}

	if (has_pfn)
		iova_pfn = FUNC2(cpu_rcache->loaded, limit_pfn);

	FUNC7(&cpu_rcache->lock, flags);

	return iova_pfn;
}