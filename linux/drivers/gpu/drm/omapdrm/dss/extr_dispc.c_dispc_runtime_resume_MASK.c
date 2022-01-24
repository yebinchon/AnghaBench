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
struct dispc_device {int is_enabled; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_CONFIG ; 
 scalar_t__ OMAP_DSS_LOAD_FRAME_ONLY ; 
 scalar_t__ FUNC0 (struct dispc_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*) ; 
 struct dispc_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct dispc_device *dispc = FUNC2(dev);

	/*
	 * The reset value for load mode is 0 (OMAP_DSS_LOAD_CLUT_AND_FRAME)
	 * but we always initialize it to 2 (OMAP_DSS_LOAD_FRAME_ONLY) in
	 * _omap_dispc_initial_config(). We can thus use it to detect if
	 * we have lost register context.
	 */
	if (FUNC0(dispc, DISPC_CONFIG, 2, 1) != OMAP_DSS_LOAD_FRAME_ONLY) {
		FUNC1(dispc);

		FUNC3(dispc);

		FUNC4(dispc);

		FUNC5(dispc);
	}

	dispc->is_enabled = true;
	/* ensure the dispc_irq_handler sees the is_enabled value */
	FUNC6();

	return 0;
}