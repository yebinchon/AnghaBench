
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef enum hdmi_picture_aspect { ____Placeholder_hdmi_picture_aspect } hdmi_picture_aspect ;
struct TYPE_2__ {int picture_aspect_ratio; } ;


 TYPE_1__* edid_cea_modes ;

enum hdmi_picture_aspect drm_get_cea_aspect_ratio(const u8 video_code)
{
 return edid_cea_modes[video_code].picture_aspect_ratio;
}
