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
struct mtk_hdmi {scalar_t__ sys_offset; int /*<<< orphan*/  sys_regmap; } ;

/* Variables and functions */
 int HDMI_OUT_FIFO_EN ; 
 scalar_t__ HDMI_SYS_CFG20 ; 
 int MHL_MODE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct mtk_hdmi *hdmi)
{
	FUNC0(hdmi->sys_regmap, hdmi->sys_offset + HDMI_SYS_CFG20,
			   HDMI_OUT_FIFO_EN | MHL_MODE_ON, 0);
	FUNC1(2000, 4000);
	FUNC0(hdmi->sys_regmap, hdmi->sys_offset + HDMI_SYS_CFG20,
			   HDMI_OUT_FIFO_EN | MHL_MODE_ON, HDMI_OUT_FIFO_EN);
}