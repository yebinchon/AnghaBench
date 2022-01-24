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
struct hdmi_context {int powered; int /*<<< orphan*/  dev; int /*<<< orphan*/  regul_bulk; int /*<<< orphan*/  pmureg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI_CON_0 ; 
 int /*<<< orphan*/  HDMI_EN ; 
 int /*<<< orphan*/  HDMI_PHY_CON_0 ; 
 int /*<<< orphan*/  HDMI_PHY_POWER_OFF_EN ; 
 int /*<<< orphan*/  PMU_HDMI_PHY_CONTROL ; 
 int /*<<< orphan*/  PMU_HDMI_PHY_ENABLE_BIT ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_context*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  supply ; 

__attribute__((used)) static void FUNC6(struct hdmi_context *hdata)
{
	if (!hdata->powered)
		return;

	FUNC1(hdata, HDMI_CON_0, 0, HDMI_EN);

	FUNC1(hdata, HDMI_PHY_CON_0, ~0, HDMI_PHY_POWER_OFF_EN);

	FUNC2(hdata, false);

	FUNC4(hdata->pmureg, PMU_HDMI_PHY_CONTROL,
			PMU_HDMI_PHY_ENABLE_BIT, 0);

	FUNC5(FUNC0(supply), hdata->regul_bulk);

	FUNC3(hdata->dev);

	hdata->powered = false;
}