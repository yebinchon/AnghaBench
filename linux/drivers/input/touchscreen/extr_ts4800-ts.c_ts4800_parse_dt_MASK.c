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
typedef  int /*<<< orphan*/  u32 ;
struct ts4800_ts {int /*<<< orphan*/  bit; int /*<<< orphan*/  reg; int /*<<< orphan*/  regmap; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev,
			   struct ts4800_ts *ts)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct device_node *syscon_np;
	u32 reg, bit;
	int error;

	syscon_np = FUNC5(np, "syscon", 0);
	if (!syscon_np) {
		FUNC3(dev, "no syscon property\n");
		return -ENODEV;
	}

	ts->regmap = FUNC7(syscon_np);
	FUNC4(syscon_np);
	if (FUNC1(ts->regmap)) {
		FUNC3(dev, "cannot get parent's regmap\n");
		return FUNC2(ts->regmap);
	}

	error = FUNC6(np, "syscon", 1, &reg);
	if (error < 0) {
		FUNC3(dev, "no offset in syscon\n");
		return error;
	}

	ts->reg = reg;

	error = FUNC6(np, "syscon", 2, &bit);
	if (error < 0) {
		FUNC3(dev, "no bit in syscon\n");
		return error;
	}

	ts->bit = FUNC0(bit);

	return 0;
}