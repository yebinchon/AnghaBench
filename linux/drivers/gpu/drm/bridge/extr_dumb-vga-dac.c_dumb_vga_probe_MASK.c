#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  timings; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; } ;
struct dumb_vga {TYPE_3__ bridge; int /*<<< orphan*/ * ddc; int /*<<< orphan*/ * vdd; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 struct dumb_vga* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  dumb_vga_bridge_funcs ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct dumb_vga*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct dumb_vga *vga;

	vga = FUNC4(&pdev->dev, sizeof(*vga), GFP_KERNEL);
	if (!vga)
		return -ENOMEM;
	FUNC9(pdev, vga);

	vga->vdd = FUNC5(&pdev->dev, "vdd");
	if (FUNC0(vga->vdd)) {
		int ret = FUNC1(vga->vdd);
		if (ret == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		vga->vdd = NULL;
		FUNC2(&pdev->dev, "No vdd regulator found: %d\n", ret);
	}

	vga->ddc = FUNC7(&pdev->dev);
	if (FUNC0(vga->ddc)) {
		if (FUNC1(vga->ddc) == -ENODEV) {
			FUNC2(&pdev->dev,
				"No i2c bus specified. Disabling EDID readout\n");
			vga->ddc = NULL;
		} else {
			FUNC3(&pdev->dev, "Couldn't retrieve i2c bus\n");
			return FUNC1(vga->ddc);
		}
	}

	vga->bridge.funcs = &dumb_vga_bridge_funcs;
	vga->bridge.of_node = pdev->dev.of_node;
	vga->bridge.timings = FUNC8(&pdev->dev);

	FUNC6(&vga->bridge);

	return 0;
}