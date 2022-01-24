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
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/ * rcar_gen3_slave_whitelist ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_rcar_gen3 ; 
 int /*<<< orphan*/  soc_rcar_gen3_whitelist ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct device *dev)
{
	unsigned int i;

	/*
	 * For R-Car Gen3 use a white list to opt-in slave devices.
	 * For Other SoCs, this returns true anyway.
	 */
	if (!FUNC2(soc_rcar_gen3))
		return true;

	/* Check whether this R-Car Gen3 can use the IPMMU correctly or not */
	if (!FUNC2(soc_rcar_gen3_whitelist))
		return false;

	/* Check whether this slave device can work with the IPMMU */
	for (i = 0; i < FUNC0(rcar_gen3_slave_whitelist); i++) {
		if (!FUNC3(FUNC1(dev), rcar_gen3_slave_whitelist[i]))
			return true;
	}

	/* Otherwise, do not allow use of IPMMU */
	return false;
}