
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int ast_connector_init (struct drm_device*) ;
 int ast_crtc_init (struct drm_device*) ;
 int ast_cursor_init (struct drm_device*) ;
 int ast_encoder_init (struct drm_device*) ;

int ast_mode_init(struct drm_device *dev)
{
 ast_cursor_init(dev);
 ast_crtc_init(dev);
 ast_encoder_init(dev);
 ast_connector_init(dev);
 return 0;
}
