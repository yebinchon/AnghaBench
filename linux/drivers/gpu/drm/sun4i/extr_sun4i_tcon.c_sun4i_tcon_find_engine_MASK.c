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
struct sunxi_engine {int dummy; } ;
struct sun4i_drv {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct sunxi_engine* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 scalar_t__ FUNC4 (struct device_node*) ; 
 struct sunxi_engine* FUNC5 (struct sun4i_drv*,struct device_node*,int /*<<< orphan*/ ) ; 
 struct sunxi_engine* FUNC6 (struct sun4i_drv*,int) ; 
 int FUNC7 (struct sun4i_drv*) ; 
 int FUNC8 (struct device_node*) ; 

__attribute__((used)) static struct sunxi_engine *FUNC9(struct sun4i_drv *drv,
						   struct device_node *node)
{
	struct device_node *port;
	struct sunxi_engine *engine;

	port = FUNC2(node, 0);
	if (!port)
		return FUNC0(-EINVAL);

	/*
	 * Is this a corrected device tree with cross pipeline
	 * connections between the backend and TCON?
	 */
	if (FUNC1(port) > 1) {
		int id;

		/*
		 * When pipeline has the same number of TCONs and engines which
		 * are represented by frontends/backends (DE1) or mixers (DE2),
		 * we match them by their respective IDs. However, if pipeline
		 * contains TCON TOP, chances are that there are either more
		 * TCONs than engines (R40) or TCONs with non-consecutive ids.
		 * (H6). In that case it's easier just use TCON index in list
		 * as an id. That means that on R40, any 2 TCONs can be enabled
		 * in DT out of 4 (there are 2 mixers). Due to the design of
		 * TCON TOP, remaining 2 TCONs can't be connected to anything
		 * anyway.
		 */
		if (FUNC4(node))
			id = FUNC7(drv);
		else
			id = FUNC8(port);

		/* Get our engine by matching our ID */
		engine = FUNC6(drv, id);

		FUNC3(port);
		return engine;
	}

	/* Fallback to old method by traversing input endpoints */
	FUNC3(port);
	return FUNC5(drv, node, 0);
}