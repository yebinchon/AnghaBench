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
struct omap_dss_device {char* name; int /*<<< orphan*/  ops_flags; int /*<<< orphan*/  of_ports; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; int /*<<< orphan*/  dispc_channel; int /*<<< orphan*/  type; int /*<<< orphan*/  id; int /*<<< orphan*/ * dev; } ;
struct venc_device {TYPE_1__* pdev; struct omap_dss_device output; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMAP_DISPLAY_TYPE_VENC ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_DIGIT ; 
 int /*<<< orphan*/  OMAP_DSS_DEVICE_OP_MODES ; 
 int /*<<< orphan*/  OMAP_DSS_OUTPUT_VENC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  venc_ops ; 

__attribute__((used)) static int FUNC3(struct venc_device *venc)
{
	struct omap_dss_device *out = &venc->output;
	int r;

	out->dev = &venc->pdev->dev;
	out->id = OMAP_DSS_OUTPUT_VENC;
	out->type = OMAP_DISPLAY_TYPE_VENC;
	out->name = "venc.0";
	out->dispc_channel = OMAP_DSS_CHANNEL_DIGIT;
	out->ops = &venc_ops;
	out->owner = THIS_MODULE;
	out->of_ports = FUNC0(0);
	out->ops_flags = OMAP_DSS_DEVICE_OP_MODES;

	r = FUNC1(out);
	if (r < 0)
		return r;

	FUNC2(out);

	return 0;
}