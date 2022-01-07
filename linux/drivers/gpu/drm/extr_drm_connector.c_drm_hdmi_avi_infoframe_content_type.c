
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_avi_infoframe {int itc; void* content_type; } ;
struct drm_connector_state {int content_type; } ;





 int DRM_MODE_CONTENT_TYPE_NO_DATA ;

 void* HDMI_CONTENT_TYPE_CINEMA ;
 void* HDMI_CONTENT_TYPE_GAME ;
 void* HDMI_CONTENT_TYPE_GRAPHICS ;
 void* HDMI_CONTENT_TYPE_PHOTO ;

void drm_hdmi_avi_infoframe_content_type(struct hdmi_avi_infoframe *frame,
      const struct drm_connector_state *conn_state)
{
 switch (conn_state->content_type) {
 case 129:
  frame->content_type = HDMI_CONTENT_TYPE_GRAPHICS;
  break;
 case 131:
  frame->content_type = HDMI_CONTENT_TYPE_CINEMA;
  break;
 case 130:
  frame->content_type = HDMI_CONTENT_TYPE_GAME;
  break;
 case 128:
  frame->content_type = HDMI_CONTENT_TYPE_PHOTO;
  break;
 default:

  frame->content_type = HDMI_CONTENT_TYPE_GRAPHICS;
 }

 frame->itc = conn_state->content_type != DRM_MODE_CONTENT_TYPE_NO_DATA;
}
