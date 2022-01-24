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
struct sun6i_drc {void* reset; void* bus_clk; void* mod_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct sun6i_drc*) ; 
 void* FUNC6 (struct device*,char*) ; 
 struct sun6i_drc* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int FUNC10 (void*) ; 

__attribute__((used)) static int FUNC11(struct device *dev, struct device *master,
			 void *data)
{
	struct sun6i_drc *drc;
	int ret;

	drc = FUNC7(dev, sizeof(*drc), GFP_KERNEL);
	if (!drc)
		return -ENOMEM;
	FUNC5(dev, drc);

	drc->reset = FUNC8(dev, NULL);
	if (FUNC0(drc->reset)) {
		FUNC4(dev, "Couldn't get our reset line\n");
		return FUNC1(drc->reset);
	}

	ret = FUNC10(drc->reset);
	if (ret) {
		FUNC4(dev, "Couldn't deassert our reset line\n");
		return ret;
	}

	drc->bus_clk = FUNC6(dev, "ahb");
	if (FUNC0(drc->bus_clk)) {
		FUNC4(dev, "Couldn't get our bus clock\n");
		ret = FUNC1(drc->bus_clk);
		goto err_assert_reset;
	}
	FUNC3(drc->bus_clk);

	drc->mod_clk = FUNC6(dev, "mod");
	if (FUNC0(drc->mod_clk)) {
		FUNC4(dev, "Couldn't get our mod clock\n");
		ret = FUNC1(drc->mod_clk);
		goto err_disable_bus_clk;
	}
	FUNC3(drc->mod_clk);

	return 0;

err_disable_bus_clk:
	FUNC2(drc->bus_clk);
err_assert_reset:
	FUNC9(drc->reset);
	return ret;
}