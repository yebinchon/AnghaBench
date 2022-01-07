
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int dummy; } ;
struct drm_device {struct drm_minor* render; struct drm_minor* primary; } ;


 int BUG () ;



__attribute__((used)) static struct drm_minor **drm_minor_get_slot(struct drm_device *dev,
          unsigned int type)
{
 switch (type) {
 case 129:
  return &dev->primary;
 case 128:
  return &dev->render;
 default:
  BUG();
 }
}
