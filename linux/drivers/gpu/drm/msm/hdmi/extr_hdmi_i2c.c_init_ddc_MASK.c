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
struct hdmi_i2c_adapter {struct hdmi* hdmi; } ;
struct hdmi {int dummy; } ;

/* Variables and functions */
 int HDMI_DDC_CTRL_SOFT_RESET ; 
 int HDMI_DDC_CTRL_SW_STATUS_RESET ; 
 int FUNC0 (int) ; 
 int HDMI_DDC_REF_REFTIMER_ENABLE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  REG_HDMI_DDC_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_DDC_REF ; 
 int /*<<< orphan*/  REG_HDMI_DDC_SETUP ; 
 int /*<<< orphan*/  REG_HDMI_DDC_SPEED ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct hdmi_i2c_adapter *hdmi_i2c)
{
	struct hdmi *hdmi = hdmi_i2c->hdmi;

	FUNC4(hdmi, REG_HDMI_DDC_CTRL,
			HDMI_DDC_CTRL_SW_STATUS_RESET);
	FUNC4(hdmi, REG_HDMI_DDC_CTRL,
			HDMI_DDC_CTRL_SOFT_RESET);

	FUNC4(hdmi, REG_HDMI_DDC_SPEED,
			FUNC3(2) |
			FUNC2(10));

	FUNC4(hdmi, REG_HDMI_DDC_SETUP,
			FUNC1(0xff));

	/* enable reference timer for 27us */
	FUNC4(hdmi, REG_HDMI_DDC_REF,
			HDMI_DDC_REF_REFTIMER_ENABLE |
			FUNC0(27));
}