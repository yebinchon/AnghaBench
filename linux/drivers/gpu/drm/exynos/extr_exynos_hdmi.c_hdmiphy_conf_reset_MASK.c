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
struct hdmi_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_CORE_RSTOUT ; 
 int /*<<< orphan*/  HDMI_PHY_RSTOUT ; 
 int HDMI_PHY_SW_RSTOUT ; 
 int /*<<< orphan*/  FUNC0 (struct hdmi_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct hdmi_context *hdata)
{
	FUNC0(hdata, HDMI_CORE_RSTOUT, 0, 1);
	FUNC1(10000, 12000);
	FUNC0(hdata, HDMI_CORE_RSTOUT, ~0, 1);
	FUNC1(10000, 12000);
	FUNC0(hdata, HDMI_PHY_RSTOUT, ~0, HDMI_PHY_SW_RSTOUT);
	FUNC1(10000, 12000);
	FUNC0(hdata, HDMI_PHY_RSTOUT, 0, HDMI_PHY_SW_RSTOUT);
	FUNC1(10000, 12000);
}