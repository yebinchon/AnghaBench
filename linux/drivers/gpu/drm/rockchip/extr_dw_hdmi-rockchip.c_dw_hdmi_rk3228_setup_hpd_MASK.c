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
struct rockchip_hdmi {int /*<<< orphan*/  regmap; } ;
struct dw_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  RK3228_GRF_SOC_CON2 ; 
 int /*<<< orphan*/  RK3228_GRF_SOC_CON6 ; 
 int RK3228_HDMI_HPD_VSEL ; 
 int RK3228_HDMI_SCLIN_MSK ; 
 int RK3228_HDMI_SCL_VSEL ; 
 int RK3228_HDMI_SDAIN_MSK ; 
 int RK3228_HDMI_SDA_VSEL ; 
 int /*<<< orphan*/  FUNC1 (struct dw_hdmi*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dw_hdmi *dw_hdmi, void *data)
{
	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;

	FUNC1(dw_hdmi, data);

	FUNC2(hdmi->regmap,
		RK3228_GRF_SOC_CON6,
		FUNC0(RK3228_HDMI_HPD_VSEL | RK3228_HDMI_SDA_VSEL |
			      RK3228_HDMI_SCL_VSEL,
			      RK3228_HDMI_HPD_VSEL | RK3228_HDMI_SDA_VSEL |
			      RK3228_HDMI_SCL_VSEL));

	FUNC2(hdmi->regmap,
		RK3228_GRF_SOC_CON2,
		FUNC0(RK3228_HDMI_SDAIN_MSK | RK3228_HDMI_SCLIN_MSK,
			      RK3228_HDMI_SDAIN_MSK | RK3228_HDMI_SCLIN_MSK));
}