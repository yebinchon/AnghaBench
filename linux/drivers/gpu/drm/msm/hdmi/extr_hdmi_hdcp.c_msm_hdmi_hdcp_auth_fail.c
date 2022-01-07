
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_hdcp_ctrl {int hdcp_reauth_work; int hdcp_state; struct hdmi* hdmi; } ;
struct hdmi {int workq; int reg_lock; } ;


 int DBG (char*) ;
 int HDCP_STATE_AUTH_FAILED ;
 int HDMI_CTRL_ENCRYPTED ;
 int REG_HDMI_CTRL ;
 int hdmi_read (struct hdmi*,int ) ;
 int hdmi_write (struct hdmi*,int ,int ) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void msm_hdmi_hdcp_auth_fail(struct hdmi_hdcp_ctrl *hdcp_ctrl)
{
 struct hdmi *hdmi = hdcp_ctrl->hdmi;
 u32 reg_val;
 unsigned long flags;

 DBG("hdcp auth failed, queue reauth work");

 spin_lock_irqsave(&hdmi->reg_lock, flags);
 reg_val = hdmi_read(hdmi, REG_HDMI_CTRL);
 reg_val &= ~HDMI_CTRL_ENCRYPTED;
 hdmi_write(hdmi, REG_HDMI_CTRL, reg_val);
 spin_unlock_irqrestore(&hdmi->reg_lock, flags);

 hdcp_ctrl->hdcp_state = HDCP_STATE_AUTH_FAILED;
 queue_work(hdmi->workq, &hdcp_ctrl->hdcp_reauth_work);
}
