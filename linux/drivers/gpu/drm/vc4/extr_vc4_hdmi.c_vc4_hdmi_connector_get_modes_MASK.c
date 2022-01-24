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
struct vc4_hdmi_encoder {int /*<<< orphan*/  hdmi_monitor; } ;
struct vc4_hdmi_connector {struct drm_encoder* encoder; } ;
struct vc4_dev {TYPE_1__* hdmi; } ;
struct edid {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  cec_adap; int /*<<< orphan*/  ddc; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct edid*) ; 
 int FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (struct edid*) ; 
 struct edid* FUNC4 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct edid*) ; 
 struct vc4_dev* FUNC6 (struct drm_device*) ; 
 struct vc4_hdmi_connector* FUNC7 (struct drm_connector*) ; 
 struct vc4_hdmi_encoder* FUNC8 (struct drm_encoder*) ; 

__attribute__((used)) static int FUNC9(struct drm_connector *connector)
{
	struct vc4_hdmi_connector *vc4_connector =
		FUNC7(connector);
	struct drm_encoder *encoder = vc4_connector->encoder;
	struct vc4_hdmi_encoder *vc4_encoder = FUNC8(encoder);
	struct drm_device *dev = connector->dev;
	struct vc4_dev *vc4 = FUNC6(dev);
	int ret = 0;
	struct edid *edid;

	edid = FUNC4(connector, vc4->hdmi->ddc);
	FUNC0(vc4->hdmi->cec_adap, edid);
	if (!edid)
		return -ENODEV;

	vc4_encoder->hdmi_monitor = FUNC3(edid);

	FUNC2(connector, edid);
	ret = FUNC1(connector, edid);
	FUNC5(edid);

	return ret;
}