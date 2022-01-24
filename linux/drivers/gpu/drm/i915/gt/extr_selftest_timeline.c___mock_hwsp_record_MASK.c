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
struct mock_hwsp_freelist {int /*<<< orphan*/  cachelines; int /*<<< orphan*/ * history; } ;
struct intel_timeline {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_timeline*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_timeline*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct intel_timeline* FUNC3 (int /*<<< orphan*/ *,struct intel_timeline*) ; 

__attribute__((used)) static void FUNC4(struct mock_hwsp_freelist *state,
			       unsigned int idx,
			       struct intel_timeline *tl)
{
	tl = FUNC3(&state->history[idx], tl);
	if (tl) {
		FUNC2(&state->cachelines, FUNC0(tl));
		FUNC1(tl);
	}
}