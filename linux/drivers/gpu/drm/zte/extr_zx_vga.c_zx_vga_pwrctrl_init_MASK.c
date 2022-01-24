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
struct zx_vga_pwrctrl {int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; struct regmap* regmap; } ;
struct zx_vga {struct device* dev; struct zx_vga_pwrctrl pwrctrl; } ;
struct regmap {int dummy; } ;
struct of_phandle_args {int /*<<< orphan*/  np; int /*<<< orphan*/ * args; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 struct regmap* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct zx_vga *vga)
{
	struct zx_vga_pwrctrl *pwrctrl = &vga->pwrctrl;
	struct device *dev = vga->dev;
	struct of_phandle_args out_args;
	struct regmap *regmap;
	int ret;

	ret = FUNC3(dev->of_node,
				"zte,vga-power-control", 2, 0, &out_args);
	if (ret)
		return ret;

	regmap = FUNC4(out_args.np);
	if (FUNC0(regmap)) {
		ret = FUNC1(regmap);
		goto out;
	}

	pwrctrl->regmap = regmap;
	pwrctrl->reg = out_args.args[0];
	pwrctrl->mask = out_args.args[1];

out:
	FUNC2(out_args.np);
	return ret;
}