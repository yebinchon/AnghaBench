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
struct TYPE_3__ {struct device* dev; int /*<<< orphan*/ * ops; } ;
struct vc4_dsi {TYPE_1__ dsi_host; struct platform_device* pdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct vc4_dsi*) ; 
 struct vc4_dsi* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  vc4_dsi_host_ops ; 
 int /*<<< orphan*/  vc4_dsi_ops ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct vc4_dsi *dsi;
	int ret;

	dsi = FUNC2(dev, sizeof(*dsi), GFP_KERNEL);
	if (!dsi)
		return -ENOMEM;
	FUNC1(dev, dsi);

	dsi->pdev = pdev;

	/* Note, the initialization sequence for DSI and panels is
	 * tricky.  The component bind above won't get past its
	 * -EPROBE_DEFER until the panel/bridge probes.  The
	 * panel/bridge will return -EPROBE_DEFER until it has a
	 * mipi_dsi_host to register its device to.  So, we register
	 * the host during pdev probe time, so vc4 as a whole can then
	 * -EPROBE_DEFER its component bind process until the panel
	 * successfully attaches.
	 */
	dsi->dsi_host.ops = &vc4_dsi_host_ops;
	dsi->dsi_host.dev = dev;
	FUNC3(&dsi->dsi_host);

	ret = FUNC0(&pdev->dev, &vc4_dsi_ops);
	if (ret) {
		FUNC4(&dsi->dsi_host);
		return ret;
	}

	return 0;
}