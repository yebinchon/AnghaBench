
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int dummy; } ;


 int __dw_hdmi_remove (struct dw_hdmi*) ;

void dw_hdmi_unbind(struct dw_hdmi *hdmi)
{
 __dw_hdmi_remove(hdmi);
}
