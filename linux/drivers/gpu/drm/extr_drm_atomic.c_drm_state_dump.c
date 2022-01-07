
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_printer {int dummy; } ;
struct drm_device {int dummy; } ;


 int __drm_state_dump (struct drm_device*,struct drm_printer*,int) ;

void drm_state_dump(struct drm_device *dev, struct drm_printer *p)
{
 __drm_state_dump(dev, p, 0);
}
