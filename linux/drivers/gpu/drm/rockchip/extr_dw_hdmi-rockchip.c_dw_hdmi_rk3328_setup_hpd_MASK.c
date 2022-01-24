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
 int /*<<< orphan*/  RK3328_GRF_SOC_CON2 ; 
 int /*<<< orphan*/  RK3328_GRF_SOC_CON3 ; 
 int /*<<< orphan*/  RK3328_GRF_SOC_CON4 ; 
 int RK3328_HDMI_CEC5V_GRF ; 
 int RK3328_HDMI_CEC_5V ; 
 int RK3328_HDMI_HPD5V_GRF ; 
 int RK3328_HDMI_HPD_5V ; 
 int RK3328_HDMI_HPD_IOE ; 
 int RK3328_HDMI_HPD_SARADC ; 
 int RK3328_HDMI_SCL5V_GRF ; 
 int RK3328_HDMI_SCLIN_MSK ; 
 int RK3328_HDMI_SCL_5V ; 
 int RK3328_HDMI_SDA5V_GRF ; 
 int RK3328_HDMI_SDAIN_MSK ; 
 int RK3328_HDMI_SDA_5V ; 
 int /*<<< orphan*/  FUNC1 (struct dw_hdmi*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dw_hdmi *dw_hdmi, void *data)
{
	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;

	FUNC1(dw_hdmi, data);

	/* Enable and map pins to 3V grf-controlled io-voltage */
	FUNC2(hdmi->regmap,
		RK3328_GRF_SOC_CON4,
		FUNC0(0, RK3328_HDMI_HPD_SARADC | RK3328_HDMI_CEC_5V |
				 RK3328_HDMI_SDA_5V | RK3328_HDMI_SCL_5V |
				 RK3328_HDMI_HPD_5V));
	FUNC2(hdmi->regmap,
		RK3328_GRF_SOC_CON3,
		FUNC0(0, RK3328_HDMI_SDA5V_GRF | RK3328_HDMI_SCL5V_GRF |
				 RK3328_HDMI_HPD5V_GRF |
				 RK3328_HDMI_CEC5V_GRF));
	FUNC2(hdmi->regmap,
		RK3328_GRF_SOC_CON2,
		FUNC0(RK3328_HDMI_SDAIN_MSK | RK3328_HDMI_SCLIN_MSK,
			      RK3328_HDMI_SDAIN_MSK | RK3328_HDMI_SCLIN_MSK |
			      RK3328_HDMI_HPD_IOE));
}