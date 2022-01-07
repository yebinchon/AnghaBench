
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enc_out_bus_format; int enc_in_bus_format; } ;
struct dw_hdmi {TYPE_1__ hdmi_data; } ;


 scalar_t__ hdmi_bus_fmt_is_rgb (int ) ;
 int hdmi_bus_fmt_is_yuv422 (int ) ;
 scalar_t__ hdmi_bus_fmt_is_yuv444 (int ) ;

__attribute__((used)) static int is_color_space_interpolation(struct dw_hdmi *hdmi)
{
 if (!hdmi_bus_fmt_is_yuv422(hdmi->hdmi_data.enc_in_bus_format))
  return 0;

 if (hdmi_bus_fmt_is_rgb(hdmi->hdmi_data.enc_out_bus_format) ||
     hdmi_bus_fmt_is_yuv444(hdmi->hdmi_data.enc_out_bus_format))
  return 1;

 return 0;
}
