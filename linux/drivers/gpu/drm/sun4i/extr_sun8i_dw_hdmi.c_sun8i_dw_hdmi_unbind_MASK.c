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
struct sun8i_dw_hdmi {scalar_t__ ddc_en; int /*<<< orphan*/  regulator; int /*<<< orphan*/  rst_ctrl; int /*<<< orphan*/  clk_tmds; int /*<<< orphan*/  hdmi; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sun8i_dw_hdmi* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sun8i_dw_hdmi*) ; 

__attribute__((used)) static void FUNC8(struct device *dev, struct device *master,
				 void *data)
{
	struct sun8i_dw_hdmi *hdmi = FUNC1(dev);

	FUNC2(hdmi->hdmi);
	FUNC7(hdmi);
	FUNC0(hdmi->clk_tmds);
	FUNC6(hdmi->rst_ctrl);
	FUNC4(hdmi->ddc_en, 0);
	FUNC5(hdmi->regulator);

	if (hdmi->ddc_en)
		FUNC3(hdmi->ddc_en);
}