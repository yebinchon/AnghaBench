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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENERIC_CTRL_ENABLE ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_GENERIC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tegra_hdmi *hdmi)
{
	u32 value;

	value = FUNC0(hdmi, HDMI_NV_PDISP_HDMI_GENERIC_CTRL);
	value |= GENERIC_CTRL_ENABLE;
	FUNC1(hdmi, value, HDMI_NV_PDISP_HDMI_GENERIC_CTRL);
}