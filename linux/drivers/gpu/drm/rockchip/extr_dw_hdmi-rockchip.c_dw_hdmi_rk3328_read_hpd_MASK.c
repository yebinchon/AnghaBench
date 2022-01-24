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
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  RK3328_GRF_SOC_CON4 ; 
 int RK3328_HDMI_SCL_5V ; 
 int RK3328_HDMI_SDA_5V ; 
 int connector_status_connected ; 
 int FUNC1 (struct dw_hdmi*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum drm_connector_status
FUNC3(struct dw_hdmi *dw_hdmi, void *data)
{
	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
	enum drm_connector_status status;

	status = FUNC1(dw_hdmi, data);

	if (status == connector_status_connected)
		FUNC2(hdmi->regmap,
			RK3328_GRF_SOC_CON4,
			FUNC0(RK3328_HDMI_SDA_5V | RK3328_HDMI_SCL_5V,
				      RK3328_HDMI_SDA_5V | RK3328_HDMI_SCL_5V));
	else
		FUNC2(hdmi->regmap,
			RK3328_GRF_SOC_CON4,
			FUNC0(0, RK3328_HDMI_SDA_5V |
					 RK3328_HDMI_SCL_5V));
	return status;
}