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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct imx_parallel_display {struct device* dev; int /*<<< orphan*/  bridge; int /*<<< orphan*/  panel; int /*<<< orphan*/  bus_format; int /*<<< orphan*/  edid_len; int /*<<< orphan*/  edid; } ;
struct drm_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_RGB565_1X16 ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_RGB666_1X18 ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_RGB666_1X24_CPADHI ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_RGB888_1X24 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct imx_parallel_display*) ; 
 struct imx_parallel_display* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,struct imx_parallel_display*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct device *master, void *data)
{
	struct drm_device *drm = data;
	struct device_node *np = dev->of_node;
	const u8 *edidp;
	struct imx_parallel_display *imxpd;
	int ret;
	u32 bus_format = 0;
	const char *fmt;

	imxpd = FUNC1(dev, sizeof(*imxpd), GFP_KERNEL);
	if (!imxpd)
		return -ENOMEM;

	edidp = FUNC5(np, "edid", &imxpd->edid_len);
	if (edidp)
		imxpd->edid = FUNC4(edidp, imxpd->edid_len, GFP_KERNEL);

	ret = FUNC6(np, "interface-pix-fmt", &fmt);
	if (!ret) {
		if (!FUNC7(fmt, "rgb24"))
			bus_format = MEDIA_BUS_FMT_RGB888_1X24;
		else if (!FUNC7(fmt, "rgb565"))
			bus_format = MEDIA_BUS_FMT_RGB565_1X16;
		else if (!FUNC7(fmt, "bgr666"))
			bus_format = MEDIA_BUS_FMT_RGB666_1X18;
		else if (!FUNC7(fmt, "lvds666"))
			bus_format = MEDIA_BUS_FMT_RGB666_1X24_CPADHI;
	}
	imxpd->bus_format = bus_format;

	/* port@1 is the output port */
	ret = FUNC2(np, 1, 0, &imxpd->panel, &imxpd->bridge);
	if (ret && ret != -ENODEV)
		return ret;

	imxpd->dev = dev;

	ret = FUNC3(drm, imxpd);
	if (ret)
		return ret;

	FUNC0(dev, imxpd);

	return 0;
}