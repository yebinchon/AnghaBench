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
struct intel_timeline_cacheline {int /*<<< orphan*/  active; int /*<<< orphan*/  vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHELINE_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_timeline_cacheline*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct intel_timeline_cacheline *cl)
{
	FUNC0(FUNC4(cl->vaddr, CACHELINE_FREE));
	cl->vaddr = FUNC3(cl->vaddr, CACHELINE_FREE);

	if (FUNC2(&cl->active))
		FUNC1(cl);
}