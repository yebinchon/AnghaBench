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
struct inno_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_SYS_CTRL ; 
 int /*<<< orphan*/  NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct inno_hdmi*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inno_hdmi*,int /*<<< orphan*/ ) ; 
 int m_INT_POL ; 
 int m_POWER ; 
 int m_REG_CLK_INV ; 
 int m_REG_CLK_SOURCE ; 
 int m_RST_ANALOG ; 
 int m_RST_DIGITAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int v_INT_POL_HIGH ; 
 int v_NOT_RST_ANALOG ; 
 int v_NOT_RST_DIGITAL ; 
 int v_PWR_ON ; 
 int v_REG_CLK_INV ; 
 int v_REG_CLK_SOURCE_SYS ; 

__attribute__((used)) static void FUNC3(struct inno_hdmi *hdmi)
{
	u32 val;
	u32 msk;

	FUNC0(hdmi, HDMI_SYS_CTRL, m_RST_DIGITAL, v_NOT_RST_DIGITAL);
	FUNC2(100);

	FUNC0(hdmi, HDMI_SYS_CTRL, m_RST_ANALOG, v_NOT_RST_ANALOG);
	FUNC2(100);

	msk = m_REG_CLK_INV | m_REG_CLK_SOURCE | m_POWER | m_INT_POL;
	val = v_REG_CLK_INV | v_REG_CLK_SOURCE_SYS | v_PWR_ON | v_INT_POL_HIGH;
	FUNC0(hdmi, HDMI_SYS_CTRL, msk, val);

	FUNC1(hdmi, NORMAL);
}