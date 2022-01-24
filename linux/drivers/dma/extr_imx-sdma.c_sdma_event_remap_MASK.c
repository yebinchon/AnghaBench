#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sdma_engine {TYPE_1__* dev; } ;
struct regmap {int dummy; } ;
struct property {int length; } ;
typedef  struct regmap device_node ;
struct TYPE_3__ {struct regmap* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EVENT_REMAP_CELLS ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 struct property* FUNC5 (struct regmap*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*) ; 
 struct regmap* FUNC7 (struct regmap*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct regmap*,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct regmap*,int,int /*<<< orphan*/ ,int) ; 
 struct regmap* FUNC10 (struct regmap*) ; 

__attribute__((used)) static int FUNC11(struct sdma_engine *sdma)
{
	struct device_node *np = sdma->dev->of_node;
	struct device_node *gpr_np = FUNC7(np, "gpr", 0);
	struct property *event_remap;
	struct regmap *gpr;
	char propname[] = "fsl,sdma-event-remap";
	u32 reg, val, shift, num_map, i;
	int ret = 0;

	if (FUNC1(np) || FUNC1(gpr_np))
		goto out;

	event_remap = FUNC5(np, propname, NULL);
	num_map = event_remap ? (event_remap->length / sizeof(u32)) : 0;
	if (!num_map) {
		FUNC3(sdma->dev, "no event needs to be remapped\n");
		goto out;
	} else if (num_map % EVENT_REMAP_CELLS) {
		FUNC4(sdma->dev, "the property %s must modulo %d\n",
				propname, EVENT_REMAP_CELLS);
		ret = -EINVAL;
		goto out;
	}

	gpr = FUNC10(gpr_np);
	if (FUNC1(gpr)) {
		FUNC4(sdma->dev, "failed to get gpr regmap\n");
		ret = FUNC2(gpr);
		goto out;
	}

	for (i = 0; i < num_map; i += EVENT_REMAP_CELLS) {
		ret = FUNC8(np, propname, i, &reg);
		if (ret) {
			FUNC4(sdma->dev, "failed to read property %s index %d\n",
					propname, i);
			goto out;
		}

		ret = FUNC8(np, propname, i + 1, &shift);
		if (ret) {
			FUNC4(sdma->dev, "failed to read property %s index %d\n",
					propname, i + 1);
			goto out;
		}

		ret = FUNC8(np, propname, i + 2, &val);
		if (ret) {
			FUNC4(sdma->dev, "failed to read property %s index %d\n",
					propname, i + 2);
			goto out;
		}

		FUNC9(gpr, reg, FUNC0(shift), val << shift);
	}

out:
	if (!FUNC1(gpr_np))
		FUNC6(gpr_np);

	return ret;
}