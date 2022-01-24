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
struct kxsd9_state {int /*<<< orphan*/  dev; int /*<<< orphan*/  regs; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KXSD9_CTRL_B_ENABLE ; 
 int /*<<< orphan*/  KXSD9_REG_CTRL_B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kxsd9_state *st)
{
	int ret;

	/*
	 * Set into low power mode - since there may be more users of the
	 * regulators this is the first step of the power saving: it will
	 * make sure we conserve power even if there are others users on the
	 * regulators.
	 */
	ret = FUNC2(st->map,
				 KXSD9_REG_CTRL_B,
				 KXSD9_CTRL_B_ENABLE,
				 0);
	if (ret)
		return ret;

	/* Disable the regulators */
	ret = FUNC3(FUNC0(st->regs), st->regs);
	if (ret) {
		FUNC1(st->dev, "Cannot disable regulators\n");
		return ret;
	}

	return 0;
}