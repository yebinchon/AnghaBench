
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi {int * hdcp_ctrl; } ;


 int kfree (int *) ;

void msm_hdmi_hdcp_destroy(struct hdmi *hdmi)
{
 if (hdmi) {
  kfree(hdmi->hdcp_ctrl);
  hdmi->hdcp_ctrl = ((void*)0);
 }
}
