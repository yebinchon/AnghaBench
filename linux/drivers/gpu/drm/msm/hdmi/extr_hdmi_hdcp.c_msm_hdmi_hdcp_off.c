
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_hdcp_ctrl {scalar_t__ hdcp_state; int hdcp_reauth_work; int hdcp_auth_work; int auth_event_queue; int auth_event; struct hdmi* hdmi; } ;
struct hdmi {int reg_lock; } ;


 int AUTH_ABORT_EV ;
 int DBG (char*) ;
 scalar_t__ HDCP_STATE_INACTIVE ;
 scalar_t__ HDCP_STATE_NO_AKSV ;
 int HDMI_CTRL_ENCRYPTED ;
 int HDMI_HDCP_RESET_LINK0_DEAUTHENTICATE ;
 int HDMI_HPD_CTRL_ENABLE ;
 int REG_HDMI_CTRL ;
 int REG_HDMI_HDCP_CTRL ;
 int REG_HDMI_HDCP_INT_CTRL ;
 int REG_HDMI_HDCP_RESET ;
 int REG_HDMI_HPD_CTRL ;
 int cancel_work_sync (int *) ;
 int hdmi_read (struct hdmi*,int ) ;
 int hdmi_write (struct hdmi*,int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_all (int *) ;

void msm_hdmi_hdcp_off(struct hdmi_hdcp_ctrl *hdcp_ctrl)
{
 struct hdmi *hdmi = hdcp_ctrl->hdmi;
 unsigned long flags;
 u32 reg_val;

 if ((HDCP_STATE_INACTIVE == hdcp_ctrl->hdcp_state) ||
  (HDCP_STATE_NO_AKSV == hdcp_ctrl->hdcp_state)) {
  DBG("hdcp inactive or no aksv. returning");
  return;
 }







 spin_lock_irqsave(&hdmi->reg_lock, flags);
 reg_val = hdmi_read(hdmi, REG_HDMI_HPD_CTRL);
 reg_val &= ~HDMI_HPD_CTRL_ENABLE;
 hdmi_write(hdmi, REG_HDMI_HPD_CTRL, reg_val);






 hdmi_write(hdmi, REG_HDMI_HDCP_INT_CTRL, 0);
 spin_unlock_irqrestore(&hdmi->reg_lock, flags);







 set_bit(AUTH_ABORT_EV, &hdcp_ctrl->auth_event);
 wake_up_all(&hdcp_ctrl->auth_event_queue);
 cancel_work_sync(&hdcp_ctrl->hdcp_auth_work);
 cancel_work_sync(&hdcp_ctrl->hdcp_reauth_work);

 hdmi_write(hdmi, REG_HDMI_HDCP_RESET,
  HDMI_HDCP_RESET_LINK0_DEAUTHENTICATE);


 hdmi_write(hdmi, REG_HDMI_HDCP_CTRL, 0);

 spin_lock_irqsave(&hdmi->reg_lock, flags);
 reg_val = hdmi_read(hdmi, REG_HDMI_CTRL);
 reg_val &= ~HDMI_CTRL_ENCRYPTED;
 hdmi_write(hdmi, REG_HDMI_CTRL, reg_val);


 reg_val = hdmi_read(hdmi, REG_HDMI_HPD_CTRL);
 reg_val |= HDMI_HPD_CTRL_ENABLE;
 hdmi_write(hdmi, REG_HDMI_HPD_CTRL, reg_val);
 spin_unlock_irqrestore(&hdmi->reg_lock, flags);

 hdcp_ctrl->hdcp_state = HDCP_STATE_INACTIVE;

 DBG("HDCP: Off");
}
