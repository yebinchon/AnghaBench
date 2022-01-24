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
struct platform_device {int dummy; } ;
struct dw_hdmi_plat_data {int dummy; } ;
struct dw_hdmi {int /*<<< orphan*/  bridge; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dw_hdmi*) ; 
 struct dw_hdmi* FUNC1 (struct platform_device*,struct dw_hdmi_plat_data const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct dw_hdmi *FUNC3(struct platform_device *pdev,
			      const struct dw_hdmi_plat_data *plat_data)
{
	struct dw_hdmi *hdmi;

	hdmi = FUNC1(pdev, plat_data);
	if (FUNC0(hdmi))
		return hdmi;

	FUNC2(&hdmi->bridge);

	return hdmi;
}