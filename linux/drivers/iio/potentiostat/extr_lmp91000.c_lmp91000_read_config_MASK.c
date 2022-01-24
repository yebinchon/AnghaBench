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
struct lmp91000_data {int /*<<< orphan*/  regmap; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  LMP91000_REG_LOCK ; 
 int /*<<< orphan*/  LMP91000_REG_REFCN ; 
 int LMP91000_REG_REFCN_50_ZERO ; 
 int LMP91000_REG_REFCN_EXT_REF ; 
 int /*<<< orphan*/  LMP91000_REG_TIACN ; 
 int LMP91000_REG_TIACN_GAIN_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int) ; 
 unsigned int* lmp91000_rload ; 
 unsigned int* lmp91000_tia_gain ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*) ; 
 int FUNC4 (struct device_node*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct lmp91000_data *data)
{
	struct device *dev = data->dev;
	struct device_node *np = dev->of_node;
	unsigned int reg, val;
	int i, ret;

	ret = FUNC4(np, "ti,tia-gain-ohm", &val);
	if (ret) {
		if (!FUNC3(np, "ti,external-tia-resistor")) {
			FUNC1(dev, "no ti,tia-gain-ohm defined and external resistor not specified\n");
			return ret;
		}
		val = 0;
	}

	ret = -EINVAL;
	for (i = 0; i < FUNC0(lmp91000_tia_gain); i++) {
		if (lmp91000_tia_gain[i] == val) {
			reg = i << LMP91000_REG_TIACN_GAIN_SHIFT;
			ret = 0;
			break;
		}
	}

	if (ret) {
		FUNC1(dev, "invalid ti,tia-gain-ohm %d\n", val);
		return ret;
	}

	ret = FUNC4(np, "ti,rload-ohm", &val);
	if (ret) {
		val = 100;
		FUNC2(dev, "no ti,rload-ohm defined, default to %d\n", val);
	}

	ret = -EINVAL;
	for (i = 0; i < FUNC0(lmp91000_rload); i++) {
		if (lmp91000_rload[i] == val) {
			reg |= i;
			ret = 0;
			break;
		}
	}

	if (ret) {
		FUNC1(dev, "invalid ti,rload-ohm %d\n", val);
		return ret;
	}

	FUNC5(data->regmap, LMP91000_REG_LOCK, 0);
	FUNC5(data->regmap, LMP91000_REG_TIACN, reg);
	FUNC5(data->regmap, LMP91000_REG_REFCN,
		     LMP91000_REG_REFCN_EXT_REF | LMP91000_REG_REFCN_50_ZERO);
	FUNC5(data->regmap, LMP91000_REG_LOCK, 1);

	return 0;
}