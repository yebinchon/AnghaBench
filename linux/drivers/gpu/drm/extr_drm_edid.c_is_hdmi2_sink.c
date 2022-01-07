
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ supported; } ;
struct TYPE_5__ {TYPE_1__ scdc; } ;
struct TYPE_6__ {int color_formats; TYPE_2__ hdmi; } ;
struct drm_connector {TYPE_3__ display_info; } ;


 int DRM_COLOR_FORMAT_YCRCB420 ;

__attribute__((used)) static bool is_hdmi2_sink(struct drm_connector *connector)
{




 if (!connector)
  return 1;

 return connector->display_info.hdmi.scdc.supported ||
  connector->display_info.color_formats & DRM_COLOR_FORMAT_YCRCB420;
}
