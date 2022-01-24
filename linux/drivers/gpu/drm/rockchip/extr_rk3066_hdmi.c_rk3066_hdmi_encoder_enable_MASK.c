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
struct rk3066_hdmi {int /*<<< orphan*/  previous_mode; TYPE_1__* dev; int /*<<< orphan*/  grf_regmap; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  GRF_SOC_CON0 ; 
 int HDMI_VIDEO_SEL ; 
 int FUNC1 (int /*<<< orphan*/ ,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rk3066_hdmi*,int /*<<< orphan*/ *) ; 
 struct rk3066_hdmi* FUNC4 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder)
{
	struct rk3066_hdmi *hdmi = FUNC4(encoder);
	int mux, val;

	mux = FUNC1(hdmi->dev->of_node, encoder);
	if (mux)
		val = (HDMI_VIDEO_SEL << 16) | HDMI_VIDEO_SEL;
	else
		val = HDMI_VIDEO_SEL << 16;

	FUNC2(hdmi->grf_regmap, GRF_SOC_CON0, val);

	FUNC0(hdmi->dev, "hdmi encoder enable select: vop%s\n",
		      (mux) ? "1" : "0");

	FUNC3(hdmi, &hdmi->previous_mode);
}