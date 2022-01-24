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
struct rcar_lvds {int /*<<< orphan*/  companion; struct device* dev; } ;
struct of_device_id {int /*<<< orphan*/  compatible; } ;
struct device_node {int dummy; } ;
struct device {TYPE_1__* driver; int /*<<< orphan*/  of_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct of_device_id* FUNC4 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rcar_lvds *lvds)
{
	const struct of_device_id *match;
	struct device_node *companion;
	struct device *dev = lvds->dev;
	int ret = 0;

	/* Locate the companion LVDS encoder for dual-link operation, if any. */
	companion = FUNC6(dev->of_node, "renesas,companion", 0);
	if (!companion)
		return 0;

	/*
	 * Sanity check: the companion encoder must have the same compatible
	 * string.
	 */
	match = FUNC4(dev->driver->of_match_table, dev);
	if (!FUNC2(companion, match->compatible)) {
		FUNC1(dev, "Companion LVDS encoder is invalid\n");
		ret = -ENXIO;
		goto done;
	}

	lvds->companion = FUNC3(companion);
	if (!lvds->companion) {
		ret = -EPROBE_DEFER;
		goto done;
	}

	FUNC0(dev, "Found companion encoder %pOF\n", companion);

done:
	FUNC5(companion);

	return ret;
}