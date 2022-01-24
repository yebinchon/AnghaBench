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
struct hdmi_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_HDMI_8x74_ANA_CFG0 ; 
 int /*<<< orphan*/  REG_HDMI_8x74_ANA_CFG1 ; 
 int /*<<< orphan*/  REG_HDMI_8x74_BIST_CFG0 ; 
 int /*<<< orphan*/  REG_HDMI_8x74_BIST_PATN0 ; 
 int /*<<< orphan*/  REG_HDMI_8x74_BIST_PATN1 ; 
 int /*<<< orphan*/  REG_HDMI_8x74_BIST_PATN2 ; 
 int /*<<< orphan*/  REG_HDMI_8x74_BIST_PATN3 ; 
 int /*<<< orphan*/  REG_HDMI_8x74_PD_CTRL1 ; 
 int /*<<< orphan*/  FUNC0 (struct hdmi_phy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct hdmi_phy *phy,
		unsigned long int pixclock)
{
	FUNC0(phy, REG_HDMI_8x74_ANA_CFG0,   0x1b);
	FUNC0(phy, REG_HDMI_8x74_ANA_CFG1,   0xf2);
	FUNC0(phy, REG_HDMI_8x74_BIST_CFG0,  0x0);
	FUNC0(phy, REG_HDMI_8x74_BIST_PATN0, 0x0);
	FUNC0(phy, REG_HDMI_8x74_BIST_PATN1, 0x0);
	FUNC0(phy, REG_HDMI_8x74_BIST_PATN2, 0x0);
	FUNC0(phy, REG_HDMI_8x74_BIST_PATN3, 0x0);
	FUNC0(phy, REG_HDMI_8x74_PD_CTRL1,   0x20);
}