
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_hdcp_ctrl {scalar_t__ hdcp_state; int hdcp_auth_work; scalar_t__ auth_retries; scalar_t__ auth_event; struct hdmi* hdmi; } ;
struct hdmi {int workq; int reg_lock; } ;


 int DBG (char*) ;
 scalar_t__ HDCP_STATE_AUTHENTICATING ;
 scalar_t__ HDCP_STATE_INACTIVE ;
 scalar_t__ HDCP_STATE_NO_AKSV ;
 int HDMI_CTRL_ENCRYPTED ;
 int REG_HDMI_CTRL ;
 int hdmi_read (struct hdmi*,int ) ;
 int hdmi_write (struct hdmi*,int ,int ) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void msm_hdmi_hdcp_on(struct hdmi_hdcp_ctrl *hdcp_ctrl)
{
 struct hdmi *hdmi = hdcp_ctrl->hdmi;
 u32 reg_val;
 unsigned long flags;

 if ((HDCP_STATE_INACTIVE != hdcp_ctrl->hdcp_state) ||
  (HDCP_STATE_NO_AKSV == hdcp_ctrl->hdcp_state)) {
  DBG("still active or activating or no askv. returning");
  return;
 }


 spin_lock_irqsave(&hdmi->reg_lock, flags);
 reg_val = hdmi_read(hdmi, REG_HDMI_CTRL);
 reg_val &= ~HDMI_CTRL_ENCRYPTED;
 hdmi_write(hdmi, REG_HDMI_CTRL, reg_val);
 spin_unlock_irqrestore(&hdmi->reg_lock, flags);

 hdcp_ctrl->auth_event = 0;
 hdcp_ctrl->hdcp_state = HDCP_STATE_AUTHENTICATING;
 hdcp_ctrl->auth_retries = 0;
 queue_work(hdmi->workq, &hdcp_ctrl->hdcp_auth_work);
}
