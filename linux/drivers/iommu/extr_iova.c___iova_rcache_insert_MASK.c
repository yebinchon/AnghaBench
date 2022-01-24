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
struct iova_rcache {scalar_t__ depot_size; int /*<<< orphan*/  lock; struct iova_magazine** depot; int /*<<< orphan*/  cpu_rcaches; } ;
struct iova_magazine {int dummy; } ;
struct iova_domain {int dummy; } ;
struct iova_cpu_rcache {int /*<<< orphan*/  lock; struct iova_magazine* loaded; struct iova_magazine* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_GLOBAL_MAGS ; 
 struct iova_magazine* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iova_magazine*) ; 
 int /*<<< orphan*/  FUNC2 (struct iova_magazine*,struct iova_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct iova_magazine*) ; 
 int /*<<< orphan*/  FUNC4 (struct iova_magazine*,unsigned long) ; 
 struct iova_cpu_rcache* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct iova_magazine*,struct iova_magazine*) ; 

__attribute__((used)) static bool FUNC11(struct iova_domain *iovad,
				 struct iova_rcache *rcache,
				 unsigned long iova_pfn)
{
	struct iova_magazine *mag_to_free = NULL;
	struct iova_cpu_rcache *cpu_rcache;
	bool can_insert = false;
	unsigned long flags;

	cpu_rcache = FUNC5(rcache->cpu_rcaches);
	FUNC7(&cpu_rcache->lock, flags);

	if (!FUNC3(cpu_rcache->loaded)) {
		can_insert = true;
	} else if (!FUNC3(cpu_rcache->prev)) {
		FUNC10(cpu_rcache->prev, cpu_rcache->loaded);
		can_insert = true;
	} else {
		struct iova_magazine *new_mag = FUNC0(GFP_ATOMIC);

		if (new_mag) {
			FUNC6(&rcache->lock);
			if (rcache->depot_size < MAX_GLOBAL_MAGS) {
				rcache->depot[rcache->depot_size++] =
						cpu_rcache->loaded;
			} else {
				mag_to_free = cpu_rcache->loaded;
			}
			FUNC8(&rcache->lock);

			cpu_rcache->loaded = new_mag;
			can_insert = true;
		}
	}

	if (can_insert)
		FUNC4(cpu_rcache->loaded, iova_pfn);

	FUNC9(&cpu_rcache->lock, flags);

	if (mag_to_free) {
		FUNC2(mag_to_free, iovad);
		FUNC1(mag_to_free);
	}

	return can_insert;
}