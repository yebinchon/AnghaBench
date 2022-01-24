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
struct sun4i_backend {int /*<<< orphan*/  sat_reset; int /*<<< orphan*/  sat_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct sun4i_backend* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *dev) {
	struct sun4i_backend *backend = FUNC4(dev);
	int ret;

	backend->sat_reset = FUNC6(dev, "sat");
	if (FUNC0(backend->sat_reset)) {
		FUNC3(dev, "Couldn't get the SAT reset line\n");
		return FUNC1(backend->sat_reset);
	}

	ret = FUNC8(backend->sat_reset);
	if (ret) {
		FUNC3(dev, "Couldn't deassert the SAT reset line\n");
		return ret;
	}

	backend->sat_clk = FUNC5(dev, "sat");
	if (FUNC0(backend->sat_clk)) {
		FUNC3(dev, "Couldn't get our SAT clock\n");
		ret = FUNC1(backend->sat_clk);
		goto err_assert_reset;
	}

	ret = FUNC2(backend->sat_clk);
	if (ret) {
		FUNC3(dev, "Couldn't enable the SAT clock\n");
		return ret;
	}

	return 0;

err_assert_reset:
	FUNC7(backend->sat_reset);
	return ret;
}