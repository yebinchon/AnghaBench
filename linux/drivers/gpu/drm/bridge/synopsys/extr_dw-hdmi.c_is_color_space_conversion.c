
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enc_in_bus_format; scalar_t__ enc_out_bus_format; } ;
struct dw_hdmi {TYPE_1__ hdmi_data; } ;



__attribute__((used)) static int is_color_space_conversion(struct dw_hdmi *hdmi)
{
 return hdmi->hdmi_data.enc_in_bus_format != hdmi->hdmi_data.enc_out_bus_format;
}
