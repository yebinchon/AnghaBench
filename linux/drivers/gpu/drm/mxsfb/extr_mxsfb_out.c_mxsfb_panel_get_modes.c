
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxsfb_drm_private {scalar_t__ panel; } ;
struct drm_connector {int dummy; } ;


 struct mxsfb_drm_private* drm_connector_to_mxsfb_drm_private (struct drm_connector*) ;
 int drm_panel_get_modes (scalar_t__) ;

__attribute__((used)) static int mxsfb_panel_get_modes(struct drm_connector *connector)
{
 struct mxsfb_drm_private *mxsfb =
   drm_connector_to_mxsfb_drm_private(connector);

 if (mxsfb->panel)
  return drm_panel_get_modes(mxsfb->panel);

 return 0;
}
