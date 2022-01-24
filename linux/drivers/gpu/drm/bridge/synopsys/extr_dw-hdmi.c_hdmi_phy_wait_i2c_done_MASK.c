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
typedef  int u32 ;
struct dw_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_IH_I2CMPHY_STAT0 ; 
 int FUNC0 (struct dw_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_hdmi*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static bool FUNC3(struct dw_hdmi *hdmi, int msec)
{
	u32 val;

	while ((val = FUNC0(hdmi, HDMI_IH_I2CMPHY_STAT0) & 0x3) == 0) {
		if (msec-- == 0)
			return false;
		FUNC2(1000);
	}
	FUNC1(hdmi, val, HDMI_IH_I2CMPHY_STAT0);

	return true;
}