
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_display_unit {int connector; int encoder; int crtc; int cursor; int primary; } ;


 int drm_connector_cleanup (int *) ;
 int drm_connector_unregister (int *) ;
 int drm_crtc_cleanup (int *) ;
 int drm_encoder_cleanup (int *) ;
 int drm_plane_cleanup (int *) ;

void vmw_du_cleanup(struct vmw_display_unit *du)
{
 drm_plane_cleanup(&du->primary);
 drm_plane_cleanup(&du->cursor);

 drm_connector_unregister(&du->connector);
 drm_crtc_cleanup(&du->crtc);
 drm_encoder_cleanup(&du->encoder);
 drm_connector_cleanup(&du->connector);
}
