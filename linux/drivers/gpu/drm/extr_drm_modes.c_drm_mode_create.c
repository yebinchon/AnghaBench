
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;


 int GFP_KERNEL ;
 struct drm_display_mode* kzalloc (int,int ) ;

struct drm_display_mode *drm_mode_create(struct drm_device *dev)
{
 struct drm_display_mode *nmode;

 nmode = kzalloc(sizeof(struct drm_display_mode), GFP_KERNEL);
 if (!nmode)
  return ((void*)0);

 return nmode;
}
