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
struct dw_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_IH_I2CMPHY_STAT0 ; 
 int /*<<< orphan*/  HDMI_PHY_I2CM_ADDRESS_ADDR ; 
 int /*<<< orphan*/  HDMI_PHY_I2CM_DATAO_0_ADDR ; 
 int /*<<< orphan*/  HDMI_PHY_I2CM_DATAO_1_ADDR ; 
 int /*<<< orphan*/  HDMI_PHY_I2CM_OPERATION_ADDR ; 
 unsigned char HDMI_PHY_I2CM_OPERATION_ADDR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_hdmi*,unsigned char,int /*<<< orphan*/ ) ; 

void FUNC2(struct dw_hdmi *hdmi, unsigned short data,
			   unsigned char addr)
{
	FUNC1(hdmi, 0xFF, HDMI_IH_I2CMPHY_STAT0);
	FUNC1(hdmi, addr, HDMI_PHY_I2CM_ADDRESS_ADDR);
	FUNC1(hdmi, (unsigned char)(data >> 8),
		    HDMI_PHY_I2CM_DATAO_1_ADDR);
	FUNC1(hdmi, (unsigned char)(data >> 0),
		    HDMI_PHY_I2CM_DATAO_0_ADDR);
	FUNC1(hdmi, HDMI_PHY_I2CM_OPERATION_ADDR_WRITE,
		    HDMI_PHY_I2CM_OPERATION_ADDR);
	FUNC0(hdmi, 1000);
}