
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int dummy; } ;


 int dw_hdmi_init_hw (struct dw_hdmi*) ;

void dw_hdmi_resume(struct dw_hdmi *hdmi)
{
 dw_hdmi_init_hw(hdmi);
}
