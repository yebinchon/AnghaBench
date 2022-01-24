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
struct adv7511 {int /*<<< orphan*/ * cec_clk; int /*<<< orphan*/  cec_clk_freq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,char*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct adv7511 *adv7511)
{
	adv7511->cec_clk = FUNC4(dev, "cec");
	if (FUNC0(adv7511->cec_clk)) {
		int ret = FUNC1(adv7511->cec_clk);

		adv7511->cec_clk = NULL;
		return ret;
	}
	FUNC3(adv7511->cec_clk);
	adv7511->cec_clk_freq = FUNC2(adv7511->cec_clk);
	return 0;
}