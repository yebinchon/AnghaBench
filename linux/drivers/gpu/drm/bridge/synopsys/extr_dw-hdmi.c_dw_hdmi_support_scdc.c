
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int low_rates; int supported; } ;
struct TYPE_8__ {TYPE_2__ scrambling; int supported; } ;
struct TYPE_7__ {TYPE_4__ scdc; } ;
struct drm_display_info {int max_tmds_clock; TYPE_3__ hdmi; } ;
struct TYPE_5__ {struct drm_display_info display_info; } ;
struct dw_hdmi {int version; int ddc; TYPE_1__ connector; } ;



__attribute__((used)) static bool dw_hdmi_support_scdc(struct dw_hdmi *hdmi)
{
 struct drm_display_info *display = &hdmi->connector.display_info;


 if (hdmi->version < 0x200a)
  return 0;


 if (!hdmi->ddc)
  return 0;


 if (!display->hdmi.scdc.supported ||
     !display->hdmi.scdc.scrambling.supported)
  return 0;





 if (!display->hdmi.scdc.scrambling.low_rates &&
     display->max_tmds_clock <= 340000)
  return 0;

 return 1;
}
