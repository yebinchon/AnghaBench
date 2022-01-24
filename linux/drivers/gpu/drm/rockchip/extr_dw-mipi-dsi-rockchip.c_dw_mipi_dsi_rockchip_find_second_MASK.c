#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int /*<<< orphan*/  compatible; } ;
struct dw_mipi_dsi_rockchip {TYPE_2__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC1 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (struct device_node*,int,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 struct dw_mipi_dsi_rockchip* FUNC7 (struct platform_device*) ; 

__attribute__((used)) static struct device
*FUNC8(struct dw_mipi_dsi_rockchip *dsi)
{
	const struct of_device_id *match;
	struct device_node *node = NULL, *local;

	match = FUNC4(dsi->dev->driver->of_match_table, dsi->dev);

	local = FUNC3(dsi->dev->of_node, 1, 0);
	if (!local)
		return NULL;

	while ((node = FUNC1(node, NULL,
					       match->compatible))) {
		struct device_node *remote;

		/* found ourself */
		if (node == dsi->dev->of_node)
			continue;

		remote = FUNC3(node, 1, 0);
		if (!remote)
			continue;

		/* same display device in port1-ep0 for both */
		if (remote == local) {
			struct dw_mipi_dsi_rockchip *dsi2;
			struct platform_device *pdev;

			pdev = FUNC2(node);

			/*
			 * we have found the second, so will either return it
			 * or return with an error. In any case won't need the
			 * nodes anymore nor continue the loop.
			 */
			FUNC5(remote);
			FUNC5(node);
			FUNC5(local);

			if (!pdev)
				return FUNC0(-EPROBE_DEFER);

			dsi2 = FUNC7(pdev);
			if (!dsi2) {
				FUNC6(pdev);
				return FUNC0(-EPROBE_DEFER);
			}

			return &pdev->dev;
		}

		FUNC5(remote);
	}

	FUNC5(local);

	return NULL;
}