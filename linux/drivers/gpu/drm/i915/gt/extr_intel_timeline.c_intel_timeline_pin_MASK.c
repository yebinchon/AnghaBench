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
struct intel_timeline {int /*<<< orphan*/  hwsp_ggtt; int /*<<< orphan*/  hwsp_cacheline; int /*<<< orphan*/  pin_count; scalar_t__ hwsp_offset; } ;

/* Variables and functions */
 int PIN_GLOBAL ; 
 int PIN_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

int FUNC8(struct intel_timeline *tl)
{
	int err;

	if (FUNC1(&tl->pin_count, 1, 0))
		return 0;

	err = FUNC6(tl->hwsp_ggtt, 0, 0, PIN_GLOBAL | PIN_HIGH);
	if (err)
		return err;

	tl->hwsp_offset =
		FUNC5(tl->hwsp_ggtt) +
		FUNC7(tl->hwsp_offset);

	FUNC3(tl->hwsp_cacheline);
	if (FUNC2(&tl->pin_count)) {
		FUNC4(tl->hwsp_cacheline);
		FUNC0(tl->hwsp_ggtt);
	}

	return 0;
}