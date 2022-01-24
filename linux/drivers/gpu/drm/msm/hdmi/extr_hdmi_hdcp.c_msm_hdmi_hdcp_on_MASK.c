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
struct hdmi_hdcp_ctrl {scalar_t__ hdcp_state; int /*<<< orphan*/  hdcp_auth_work; scalar_t__ auth_retries; scalar_t__ auth_event; struct hdmi* hdmi; } ;
struct hdmi {int /*<<< orphan*/  workq; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ HDCP_STATE_AUTHENTICATING ; 
 scalar_t__ HDCP_STATE_INACTIVE ; 
 scalar_t__ HDCP_STATE_NO_AKSV ; 
 int /*<<< orphan*/  HDMI_CTRL_ENCRYPTED ; 
 int /*<<< orphan*/  REG_HDMI_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct hdmi_hdcp_ctrl *hdcp_ctrl)
{
	struct hdmi *hdmi = hdcp_ctrl->hdmi;
	u32 reg_val;
	unsigned long flags;

	if ((HDCP_STATE_INACTIVE != hdcp_ctrl->hdcp_state) ||
		(HDCP_STATE_NO_AKSV == hdcp_ctrl->hdcp_state)) {
		FUNC0("still active or activating or no askv. returning");
		return;
	}

	/* clear HDMI Encrypt */
	FUNC4(&hdmi->reg_lock, flags);
	reg_val = FUNC1(hdmi, REG_HDMI_CTRL);
	reg_val &= ~HDMI_CTRL_ENCRYPTED;
	FUNC2(hdmi, REG_HDMI_CTRL, reg_val);
	FUNC5(&hdmi->reg_lock, flags);

	hdcp_ctrl->auth_event = 0;
	hdcp_ctrl->hdcp_state = HDCP_STATE_AUTHENTICATING;
	hdcp_ctrl->auth_retries = 0;
	FUNC3(hdmi->workq, &hdcp_ctrl->hdcp_auth_work);
}