#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rockchip_hdmi {TYPE_2__* dev; int /*<<< orphan*/  grf_clk; TYPE_1__* chip_data; int /*<<< orphan*/  regmap; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {scalar_t__ lcdsel_grf_reg; int /*<<< orphan*/  lcdsel_big; int /*<<< orphan*/  lcdsel_lit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct drm_encoder*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rockchip_hdmi* FUNC6 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *encoder)
{
	struct rockchip_hdmi *hdmi = FUNC6(encoder);
	u32 val;
	int ret;

	if (hdmi->chip_data->lcdsel_grf_reg < 0)
		return;

	ret = FUNC4(hdmi->dev->of_node, encoder);
	if (ret)
		val = hdmi->chip_data->lcdsel_lit;
	else
		val = hdmi->chip_data->lcdsel_big;

	ret = FUNC3(hdmi->grf_clk);
	if (ret < 0) {
		FUNC1(hdmi->dev, "failed to enable grfclk %d\n", ret);
		return;
	}

	ret = FUNC5(hdmi->regmap, hdmi->chip_data->lcdsel_grf_reg, val);
	if (ret != 0)
		FUNC1(hdmi->dev, "Could not write to GRF: %d\n", ret);

	FUNC2(hdmi->grf_clk);
	FUNC0(hdmi->dev, "vop %s output to hdmi\n",
		      ret ? "LIT" : "BIG");
}