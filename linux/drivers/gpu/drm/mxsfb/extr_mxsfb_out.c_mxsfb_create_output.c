
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ polled; int dpms; } ;
struct mxsfb_drm_private {struct drm_panel* panel; TYPE_2__ connector; } ;
struct drm_panel {int dummy; } ;
struct drm_device {TYPE_1__* dev; struct mxsfb_drm_private* dev_private; } ;
struct TYPE_4__ {int of_node; } ;


 int DRM_MODE_CONNECTOR_Unknown ;
 int DRM_MODE_DPMS_OFF ;
 int drm_connector_helper_add (TYPE_2__*,int *) ;
 int drm_connector_init (struct drm_device*,TYPE_2__*,int *,int ) ;
 int drm_of_find_panel_or_bridge (int ,int ,int ,struct drm_panel**,int *) ;
 int mxsfb_panel_connector_funcs ;
 int mxsfb_panel_connector_helper_funcs ;

int mxsfb_create_output(struct drm_device *drm)
{
 struct mxsfb_drm_private *mxsfb = drm->dev_private;
 struct drm_panel *panel;
 int ret;

 ret = drm_of_find_panel_or_bridge(drm->dev->of_node, 0, 0, &panel, ((void*)0));
 if (ret)
  return ret;

 mxsfb->connector.dpms = DRM_MODE_DPMS_OFF;
 mxsfb->connector.polled = 0;
 drm_connector_helper_add(&mxsfb->connector,
   &mxsfb_panel_connector_helper_funcs);
 ret = drm_connector_init(drm, &mxsfb->connector,
     &mxsfb_panel_connector_funcs,
     DRM_MODE_CONNECTOR_Unknown);
 if (!ret)
  mxsfb->panel = panel;

 return ret;
}
