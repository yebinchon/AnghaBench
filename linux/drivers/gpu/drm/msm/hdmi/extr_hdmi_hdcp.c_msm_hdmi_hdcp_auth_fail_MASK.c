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
struct hdmi_hdcp_ctrl {int /*<<< orphan*/  hdcp_reauth_work; int /*<<< orphan*/  hdcp_state; struct hdmi* hdmi; } ;
struct hdmi {int /*<<< orphan*/  workq; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HDCP_STATE_AUTH_FAILED ; 
 int /*<<< orphan*/  HDMI_CTRL_ENCRYPTED ; 
 int /*<<< orphan*/  REG_HDMI_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct hdmi_hdcp_ctrl *hdcp_ctrl)
{
	struct hdmi *hdmi = hdcp_ctrl->hdmi;
	u32 reg_val;
	unsigned long flags;

	FUNC0("hdcp auth failed, queue reauth work");
	/* clear HDMI Encrypt */
	FUNC4(&hdmi->reg_lock, flags);
	reg_val = FUNC1(hdmi, REG_HDMI_CTRL);
	reg_val &= ~HDMI_CTRL_ENCRYPTED;
	FUNC2(hdmi, REG_HDMI_CTRL, reg_val);
	FUNC5(&hdmi->reg_lock, flags);

	hdcp_ctrl->hdcp_state = HDCP_STATE_AUTH_FAILED;
	FUNC3(hdmi->workq, &hdcp_ctrl->hdcp_reauth_work);
}