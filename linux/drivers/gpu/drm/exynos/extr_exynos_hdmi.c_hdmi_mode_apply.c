
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_context {TYPE_1__* drv_data; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ HDMI_TYPE13 ;
 int hdmi_start (struct hdmi_context*,int) ;
 int hdmi_v13_mode_apply (struct hdmi_context*) ;
 int hdmi_v14_mode_apply (struct hdmi_context*) ;

__attribute__((used)) static void hdmi_mode_apply(struct hdmi_context *hdata)
{
 if (hdata->drv_data->type == HDMI_TYPE13)
  hdmi_v13_mode_apply(hdata);
 else
  hdmi_v14_mode_apply(hdata);

 hdmi_start(hdata, 1);
}
