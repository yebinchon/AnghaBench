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
struct device {int /*<<< orphan*/  of_node; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int ENODEV ; 
 int FUNC1 (struct device*,struct component_match**) ; 
 int /*<<< orphan*/  compare_name_mdp ; 
 int /*<<< orphan*/  compare_of ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct component_match**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct device *dev,
				  struct component_match **matchptr)
{
	struct device *mdp_dev;
	int ret;

	/*
	 * MDP5/DPU based devices don't have a flat hierarchy. There is a top
	 * level parent: MDSS, and children: MDP5/DPU, DSI, HDMI, eDP etc.
	 * Populate the children devices, find the MDP5/DPU node, and then add
	 * the interfaces to our components list.
	 */
	if (FUNC4(dev->of_node, "qcom,mdss") ||
	    FUNC4(dev->of_node, "qcom,sdm845-mdss")) {
		ret = FUNC6(dev->of_node, NULL, NULL, dev);
		if (ret) {
			FUNC0(dev, "failed to populate children devices\n");
			return ret;
		}

		mdp_dev = FUNC2(dev, NULL, compare_name_mdp);
		if (!mdp_dev) {
			FUNC0(dev, "failed to find MDSS MDP node\n");
			FUNC5(dev);
			return -ENODEV;
		}

		FUNC7(mdp_dev);

		/* add the MDP component itself */
		FUNC3(dev, matchptr, compare_of,
					   mdp_dev->of_node);
	} else {
		/* MDP4 */
		mdp_dev = dev;
	}

	ret = FUNC1(mdp_dev, matchptr);
	if (ret)
		FUNC5(dev);

	return ret;
}