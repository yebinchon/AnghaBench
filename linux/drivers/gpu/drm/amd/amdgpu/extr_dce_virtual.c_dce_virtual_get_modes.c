
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 struct drm_display_mode* drm_cvt_mode (struct drm_device*,int,int,int,int,int,int) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;

__attribute__((used)) static int dce_virtual_get_modes(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_display_mode *mode = ((void*)0);
 unsigned i;
 static const struct mode_size {
  int w;
  int h;
 } common_modes[17] = {
  { 640, 480},
  { 720, 480},
  { 800, 600},
  { 848, 480},
  {1024, 768},
  {1152, 768},
  {1280, 720},
  {1280, 800},
  {1280, 854},
  {1280, 960},
  {1280, 1024},
  {1440, 900},
  {1400, 1050},
  {1680, 1050},
  {1600, 1200},
  {1920, 1080},
  {1920, 1200}
 };

 for (i = 0; i < 17; i++) {
  mode = drm_cvt_mode(dev, common_modes[i].w, common_modes[i].h, 60, 0, 0, 0);
  drm_mode_probed_add(connector, mode);
 }

 return 0;
}
