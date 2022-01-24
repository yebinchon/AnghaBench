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
struct dw_hdmi {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dw_hdmi*) ; 
 int FUNC1 (struct dw_hdmi*) ; 
 struct dw_hdmi* FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct dw_hdmi*) ; 
 int /*<<< orphan*/  rcar_dw_hdmi_plat_data ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct dw_hdmi *hdmi;

	hdmi = FUNC2(pdev, &rcar_dw_hdmi_plat_data);
	if (FUNC0(hdmi))
		return FUNC1(hdmi);

	FUNC3(pdev, hdmi);

	return 0;
}