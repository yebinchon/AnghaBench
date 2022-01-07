
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int bridge_is_on; int previous_mode; } ;


 int dw_hdmi_setup (struct dw_hdmi*,int *) ;

__attribute__((used)) static void dw_hdmi_poweron(struct dw_hdmi *hdmi)
{
 hdmi->bridge_is_on = 1;
 dw_hdmi_setup(hdmi, &hdmi->previous_mode);
}
