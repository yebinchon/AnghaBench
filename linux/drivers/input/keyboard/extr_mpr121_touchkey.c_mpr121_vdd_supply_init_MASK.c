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
struct regulator {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct regulator* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,struct regulator*) ; 
 struct regulator* FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  mpr121_vdd_supply_disable ; 
 int /*<<< orphan*/  FUNC6 (struct regulator*) ; 
 int FUNC7 (struct regulator*) ; 

__attribute__((used)) static struct regulator *FUNC8(struct device *dev)
{
	struct regulator *vdd_supply;
	int err;

	vdd_supply = FUNC5(dev, "vdd");
	if (FUNC1(vdd_supply)) {
		FUNC3(dev, "failed to get vdd regulator: %ld\n",
			FUNC2(vdd_supply));
		return vdd_supply;
	}

	err = FUNC7(vdd_supply);
	if (err) {
		FUNC3(dev, "failed to enable vdd regulator: %d\n", err);
		return FUNC0(err);
	}

	err = FUNC4(dev, mpr121_vdd_supply_disable, vdd_supply);
	if (err) {
		FUNC6(vdd_supply);
		FUNC3(dev, "failed to add disable regulator action: %d\n",
			err);
		return FUNC0(err);
	}

	return vdd_supply;
}