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
struct zx_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLKPWD ; 
 int /*<<< orphan*/  CLKPWD_PDIDCK ; 
 int /*<<< orphan*/  FUNC_HDMI_EN ; 
 int /*<<< orphan*/  FUNC_SEL ; 
 int /*<<< orphan*/  INTR1_MASK ; 
 int /*<<< orphan*/  INTR1_MONITOR_DETECT ; 
 int /*<<< orphan*/  P2T_CTRL ; 
 int /*<<< orphan*/  P2T_DC_PKT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct zx_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct zx_hdmi *hdmi)
{
	/* Disable interrupt */
	FUNC0(hdmi, INTR1_MASK, INTR1_MONITOR_DETECT, 0);

	/* Disable deep color packet */
	FUNC0(hdmi, P2T_CTRL, P2T_DC_PKT_EN, P2T_DC_PKT_EN);

	/* Disable HDMI for TX */
	FUNC0(hdmi, FUNC_SEL, FUNC_HDMI_EN, 0);

	/* Disable pclk */
	FUNC0(hdmi, CLKPWD, CLKPWD_PDIDCK, 0);
}