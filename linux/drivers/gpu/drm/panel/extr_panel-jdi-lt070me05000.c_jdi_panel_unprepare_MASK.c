#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct jdi_panel {int prepared; int /*<<< orphan*/  dcdc_en_gpio; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  supplies; TYPE_1__* dsi; } ;
struct drm_panel {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct jdi_panel*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jdi_panel* FUNC5 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC6(struct drm_panel *panel)
{
	struct jdi_panel *jdi = FUNC5(panel);
	struct device *dev = &jdi->dsi->dev;
	int ret;

	if (!jdi->prepared)
		return 0;

	FUNC3(jdi);

	ret = FUNC4(FUNC0(jdi->supplies), jdi->supplies);
	if (ret < 0)
		FUNC1(dev, "regulator disable failed, %d\n", ret);

	FUNC2(jdi->enable_gpio, 0);

	FUNC2(jdi->reset_gpio, 1);

	FUNC2(jdi->dcdc_en_gpio, 0);

	jdi->prepared = false;

	return 0;
}