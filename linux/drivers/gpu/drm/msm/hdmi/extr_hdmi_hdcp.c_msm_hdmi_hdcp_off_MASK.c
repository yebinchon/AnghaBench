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
struct hdmi_hdcp_ctrl {scalar_t__ hdcp_state; int /*<<< orphan*/  hdcp_reauth_work; int /*<<< orphan*/  hdcp_auth_work; int /*<<< orphan*/  auth_event_queue; int /*<<< orphan*/  auth_event; struct hdmi* hdmi; } ;
struct hdmi {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_ABORT_EV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ HDCP_STATE_INACTIVE ; 
 scalar_t__ HDCP_STATE_NO_AKSV ; 
 int /*<<< orphan*/  HDMI_CTRL_ENCRYPTED ; 
 int /*<<< orphan*/  HDMI_HDCP_RESET_LINK0_DEAUTHENTICATE ; 
 int /*<<< orphan*/  HDMI_HPD_CTRL_ENABLE ; 
 int /*<<< orphan*/  REG_HDMI_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_HDCP_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_HDCP_INT_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_HDCP_RESET ; 
 int /*<<< orphan*/  REG_HDMI_HPD_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct hdmi_hdcp_ctrl *hdcp_ctrl)
{
	struct hdmi *hdmi = hdcp_ctrl->hdmi;
	unsigned long flags;
	u32 reg_val;

	if ((HDCP_STATE_INACTIVE == hdcp_ctrl->hdcp_state) ||
		(HDCP_STATE_NO_AKSV == hdcp_ctrl->hdcp_state)) {
		FUNC0("hdcp inactive or no aksv. returning");
		return;
	}

	/*
	 * Disable HPD circuitry.
	 * This is needed to reset the HDCP cipher engine so that when we
	 * attempt a re-authentication, HW would clear the AN0_READY and
	 * AN1_READY bits in HDMI_HDCP_LINK0_STATUS register
	 */
	FUNC5(&hdmi->reg_lock, flags);
	reg_val = FUNC2(hdmi, REG_HDMI_HPD_CTRL);
	reg_val &= ~HDMI_HPD_CTRL_ENABLE;
	FUNC3(hdmi, REG_HDMI_HPD_CTRL, reg_val);

	/*
	 * Disable HDCP interrupts.
	 * Also, need to set the state to inactive here so that any ongoing
	 * reauth works will know that the HDCP session has been turned off.
	 */
	FUNC3(hdmi, REG_HDMI_HDCP_INT_CTRL, 0);
	FUNC6(&hdmi->reg_lock, flags);

	/*
	 * Cancel any pending auth/reauth attempts.
	 * If one is ongoing, this will wait for it to finish.
	 * No more reauthentication attempts will be scheduled since we
	 * set the current state to inactive.
	 */
	FUNC4(AUTH_ABORT_EV, &hdcp_ctrl->auth_event);
	FUNC7(&hdcp_ctrl->auth_event_queue);
	FUNC1(&hdcp_ctrl->hdcp_auth_work);
	FUNC1(&hdcp_ctrl->hdcp_reauth_work);

	FUNC3(hdmi, REG_HDMI_HDCP_RESET,
		HDMI_HDCP_RESET_LINK0_DEAUTHENTICATE);

	/* Disable encryption and disable the HDCP block */
	FUNC3(hdmi, REG_HDMI_HDCP_CTRL, 0);

	FUNC5(&hdmi->reg_lock, flags);
	reg_val = FUNC2(hdmi, REG_HDMI_CTRL);
	reg_val &= ~HDMI_CTRL_ENCRYPTED;
	FUNC3(hdmi, REG_HDMI_CTRL, reg_val);

	/* Enable HPD circuitry */
	reg_val = FUNC2(hdmi, REG_HDMI_HPD_CTRL);
	reg_val |= HDMI_HPD_CTRL_ENABLE;
	FUNC3(hdmi, REG_HDMI_HPD_CTRL, reg_val);
	FUNC6(&hdmi->reg_lock, flags);

	hdcp_ctrl->hdcp_state = HDCP_STATE_INACTIVE;

	FUNC0("HDCP: Off");
}